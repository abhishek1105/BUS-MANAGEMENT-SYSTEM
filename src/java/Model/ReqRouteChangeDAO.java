
package Model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
public class ReqRouteChangeDAO {
    
 public boolean insert(String id,String dept,String reason){
        ReqRouteChange rrc = new ReqRouteChange ();
        rrc.setId(id);
        rrc.setDept(dept);
        rrc.setReason(reason);
        
                
        Configuration cf= null;
        SessionFactory sf= null;
        Session session = null;
        try{
        cf = new Configuration();
        cf.configure();
        sf = cf.buildSessionFactory();
        session = sf.openSession();
        Transaction tr = session.beginTransaction();
        session.save(rrc);
        tr.commit();
    }
        catch(Exception e){
            System.out.println(e);
            return false;
        }
        finally{
            session.close();
            sf.close();
            return true;
        }
}
}


