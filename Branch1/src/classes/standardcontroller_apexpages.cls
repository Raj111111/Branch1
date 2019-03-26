public class standardcontroller_apexpages {

    private Account acct {get;set;}
    private Apexpages.standardcontroller std{get;set;}
    // The extension constructor initializes the private member
    // variable acct by using the getRecord method from the standard
    // controller.
    public list<Account> acc;    
    public standardcontroller_apexpages(ApexPages.StandardController stdController) {
        this.std = stdcontroller;
        this.acct = (Account)stdController.getRecord();
    }
    
public list<Account> getAcc(){
return null;
}
    public String getGreeting() {
        return 'Hello ' + acct.name + ' (' + acct.id + ')';
    }
}