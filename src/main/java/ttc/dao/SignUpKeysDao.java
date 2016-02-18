package ttc.dao;

import java.util.List;
import java.util.ArrayList;
import java.util.Map;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import ttc.bean.Bean;
import ttc.bean.SignKeyBean;


import ttc.exception.integration.IntegrationException;
import ttc.exception.integration.SignUpKeyInvalidException;

import ttc.util.MySqlConnectionManager;

public class SignUpKeysDao implements AbstractDao{
    public int insert(Map map)throws IntegrationException{
        Connection cn = null;
        PreparedStatement pst = null;
        int result = 0;
        try{
            cn = MySqlConnectionManager.getInstance().getConnection();
            StringBuffer sql = new StringBuffer();
            sql.append("insert into sign_up_keys ");
            sql.append("values(?,0)");
            
            pst = cn.prepareStatement(new String(sql));
            
            pst.setString(1,(String)map.get("key"));
            
            result = pst.executeUpdate();
        }catch(SQLException e){
            MySqlConnectionManager.getInstance().rollback();
            throw new IntegrationException(e.getMessage(),e);
        }finally{
            try{
                if(pst!=null){
                    pst.close();
                }
            }catch(SQLException e){
                throw new IntegrationException(e.getMessage(),e);
            }
        }

        return result;
        
    }
    public int update(Map map)throws IntegrationException{
        PreparedStatement pst = null;
        int result = 0;
        try{
            
            Connection cn = null;
            cn = MySqlConnectionManager.getInstance().getConnection();
            MySqlConnectionManager.getInstance().beginTransaction();
            StringBuffer sql = new StringBuffer();
            sql.append("update sign_up_keys set ");
            sql.append("key_status = 1 ");
            sql.append("where sign_up_key = ?");

            pst = cn.prepareStatement( new String(sql) );

            //タイトルを変更
            
            pst.setString(1,(String)map.get("key"));

            result = pst.executeUpdate();

        }catch(SQLException e){
            MySqlConnectionManager.getInstance().rollback();
            throw new IntegrationException(e.getMessage(),e);
        }finally{
            try{
                if(pst!=null){
                    pst.close();
                }
            }catch(SQLException e){
                throw new IntegrationException(e.getMessage(),e);
            }
        }

        return result;
    }
    public Bean read(Map map)throws IntegrationException{
        PreparedStatement pst = null;
		SignKeyBean bean = null;
		
		try{
			Connection cn = null;
			cn = MySqlConnectionManager.getInstance().getConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select sign_up_key ");
			sql.append("from sign_up_keys where key_status=0 and sign_up_key=?");
			
			pst = cn.prepareStatement(new String(sql));
			
			pst.setString(1,(String)map.get("key"));
			
			
			ResultSet rs = pst.executeQuery();
			
			if(rs.next()){
				bean = new SignKeyBean();
				bean.setSignKey(rs.getString(1));
				
			}else{
				throw new SignUpKeyInvalidException("登録キーが違います", null);
			}
			
			
			
		}catch(SQLException e){
            throw new IntegrationException(e.getMessage(),e);
        }finally{
            try{
                if(pst!=null){
                    pst.close();
                }
            }catch(SQLException e){
                throw new IntegrationException(e.getMessage(),e);
            }
        }
		return bean;
    }
    

    public List readAll(Map map)throws IntegrationException{
        return null;
    }
}
