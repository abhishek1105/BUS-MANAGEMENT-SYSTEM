//userDAO class is used to 
package Model;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class UserDAO {
    
    public boolean check(User original){
        
//original means that data which is come from 
     User db = null;
    Configuration cf = new Configuration();
    cf.configure();
    SessionFactory sf = cf.buildSessionFactory();
    Session session = sf.openSession();
    Transaction tr = session.beginTransaction();
     db= (User)session.get(User.class,original.getUsername());
     tr.commit();
     session.close();
     sf.close();
     if(db == null){
         return false;
     }
     else{
         return original.equals(db);
     }
               
     
//     if(original.equals(db))
//         return true;
//     return false;
     
    }
        
}
