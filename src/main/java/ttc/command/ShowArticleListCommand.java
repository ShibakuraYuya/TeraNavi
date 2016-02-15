package ttc.command;

import ttc.context.RequestContext;
import ttc.context.ResponseContext;

import ttc.util.MySqlConnectionManager;

import ttc.exception.business.BusinessLogicException;
import ttc.exception.integration.IntegrationException;

import java.util.Map;
import java.util.HashMap;
import java.util.ArrayList;

import ttc.util.factory.AbstractDaoFactory;
import ttc.dao.AbstractDao;
import ttc.exception.business.ParameterInvalidException;

public class ShowArticleListCommand extends AbstractCommand{
    public ResponseContext execute(ResponseContext resc)throws BusinessLogicException{
        try{
            System.out.println("ShowArticleListCommand");
            RequestContext reqc = getRequestContext();

            String userId = reqc.getParameter("userId")[0];

            Map params = new HashMap();
            params.put("userId", userId);

            MySqlConnectionManager.getInstance().beginTransaction();

            AbstractDaoFactory factory = AbstractDaoFactory.getFactory("article");
            AbstractDao dao = factory.getAbstractDao();
            ArrayList results = (ArrayList)dao.readAll(params);

            MySqlConnectionManager.getInstance().commit();
            MySqlConnectionManager.getInstance().closeConnection();

            resc.setResult(results);
            resc.setTarget("showArticleListResult");

            return resc;

        }catch(NullPointerException e){
			throw new ParameterInvalidException("入力内容が足りません", e);
		}catch(IntegrationException e){
            throw new BusinessLogicException(e.getMessage(), e);
        }
    }
}
