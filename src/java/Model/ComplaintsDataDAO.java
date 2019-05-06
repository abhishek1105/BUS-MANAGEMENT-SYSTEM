
package Model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class ComplaintsDataDAO {
    public boolean insert(String dept,String username,String number,String busno,String routeno,String complaint ){
        ComplaintsData cd = new ComplaintsData();
        cd.setDept(dept);
        cd.setUsername(username);
        cd.setNumber(number);
        cd.setBusno(busno);
        cd.setRouteno(routeno);
        cd.setComplaint(complaint);
     
                
        Configuration cf= null;
        SessionFactory sf= null;
        Session session = null;
        try{
        cf = new Configuration();
        cf.configure();
        sf = cf.buildSessionFactory();
        session = sf.openSession();
        Transaction tr = session.beginTransaction();
        session.save(cd);
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


