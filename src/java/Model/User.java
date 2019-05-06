
package Model;


public class User {
  
       
    private String username;
    private String password;
    private String account;
    

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

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }
    
    
    public boolean equals(Object o){
        User u = (User) o;
        
        if((this.username == this.getUsername())&&(this.password.equals(u.getPassword() ) )&& (this.account.equals(u.getAccount())) ){
            return true;
        }
        else{
            return false;
            
        }
    }
}
