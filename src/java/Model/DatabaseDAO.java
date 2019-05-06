package Model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class DatabaseDAO {
      
    public boolean insert(String name,String account,String username,String password,String mail,String number,String fathername,String fathernumber,String address){
        DatabaseData d = new DatabaseData();
        d.setName(name);
        d.setAccount(account);
        d.setUsername(username);
        d.setPassword(password);        
        d.setMail(mail);
        d.setNumber(number);
        d.setFathername(fathername);
        d.setFathercontact(fathernumber);
        d.setAddress(address);
        
        Configuration cfi= null;
        SessionFactory sfi= null;
        Session sessioni = null;
        try{
        cfi= new Configuration();
        cfi.configure();
        sfi = cfi.buildSessionFactory();
        sessioni = sfi.openSession();
        Transaction tr = sessioni.beginTransaction();
        sessioni.save(d);
        tr.commit();
    }
        catch(Exception e){
            System.out.println(e);
            return false;
        }
        finally{
            sessioni.close();
            sfi.close();
            return true;
        }
}
    
}

