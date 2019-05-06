
package Model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class DatabaseData {
 @Id
  private String name; 
  private String account;
 private String username;
 private String password;

 private String mail;
 private String number;
 private String fathername;
 private String fathercontact;
 private String address;


    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

   

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getFathername() {
        return fathername;
    }

    public void setFathername(String fathername) {
        this.fathername = fathername;
    }

    public String getFathercontact() {
        return fathercontact;
    }

    public void setFathercontact(String fathercontact) {
        this.fathercontact = fathercontact;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }
 

   
 public boolean equals(Object o){
        DatabaseData u = (DatabaseData) o;
        
        if((this.username == this.getUsername())&&(this.password.equals(u.getPassword() ) )&& (this.account.equals(u.getAccount())) ){
            return true;
        }
        else{
            return false;
            
        }
    }
}
