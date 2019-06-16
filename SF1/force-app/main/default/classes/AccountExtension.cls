public class AccountExtension {
    public Account acct{get;set;}
    public contact cct{get;set;}

    public AccountExtension(ApexPages.StandardController controller) {
        acct = new Account();
        cct = new contact();
        
    }
    
    public pageReference save(){
        
    upsert(acct);
    upsert(cct);
    
    return null;
    }

    String s = 'tea';
      
}