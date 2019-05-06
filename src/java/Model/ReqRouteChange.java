
package Model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class ReqRouteChange {
 @Id
 private String id;
 private String dept;
 private String reason;
 

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }
    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    
 
}
