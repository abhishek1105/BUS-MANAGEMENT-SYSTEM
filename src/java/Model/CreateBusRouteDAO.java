
package Model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class CreateBusRouteDAO {
    public boolean insert(String routeno,String busno,String drivername,String start,String end,String stops){
        CreateBusRoute cbr = new CreateBusRoute();
        cbr.setRouteno(routeno);
        cbr.setBusno(busno);
        cbr.setDrivername(drivername);
        cbr.setStart(start);
        cbr.setEnd(end);
        cbr.setStops(stops);
        Configuration cf= null;
        SessionFactory sf= null;
        Session session = null;
        try{
        cf = new Configuration();
        cf.configure();
        sf = cf.buildSessionFactory();
        session = sf.openSession();
        Transaction tr = session.beginTransaction();
        session.save(cbr);
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
