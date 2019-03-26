public class Mycontroller {

 
public string a= ''; 

    public List<Account> getAccount() {
        return [SELECT name, phone FROM Account LIMIT 10];
    }

        public string getLink() {
          return a;
    }
   

}