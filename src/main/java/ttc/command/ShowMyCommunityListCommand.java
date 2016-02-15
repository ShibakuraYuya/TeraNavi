package ttc.command;

import ttc.context.RequestContext;
import ttc.context.ResponseContext;

import ttc.util.MySqlConnectionManager;

import ttc.exception.business.BusinessLogicException;
import ttc.exception.integration.IntegrationException;

import ttc.util.factory.AbstractDaoFactory;
import ttc.dao.AbstractDao;

import java.util.Map;
import java.util.HashMap;
import ttc.bean.UserBean;
import ttc.bean.CommunityBean;
import java.util.ArrayList;
import ttc.exception.business.ParameterInvalidException;


public class ShowMyCommunityListCommand extends AbstractCommand{
    public ResponseContext execute(ResponseContext resc)throws BusinessLogicException{
        try{
            RequestContext reqc = getRequestContext();

            HashMap params = new HashMap();

            String userId=reqc.getParameter("userId")[0];
            params.put("value",userId);

            params.put("where"," WHERE "+reqc.getParameter("where")[0]+" ");


            MySqlConnectionManager.getInstance().beginTransaction();

            AbstractDaoFactory factory = AbstractDaoFactory.getFactory("community");
            AbstractDao dao = factory.getAbstractDao();
            ArrayList results=(ArrayList)dao.readAll(params);



            MySqlConnectionManager.getInstance().commit();
            MySqlConnectionManager.getInstance().closeConnection();






			resc.setResult(results);

            resc.setTarget("showMyCommunityResult");

            return resc;
        }catch(NullPointerException e){
			throw new ParameterInvalidException("入力内容が足りません", e);
		}catch(IntegrationException e){
            throw new BusinessLogicException(e.getMessage(),e);
        }
    }
}
