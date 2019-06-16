public class SearchFunctionalityHelper {

    public SearchFunctionalityHelper(ApexPages.StandardController controller) {

    }

    public string acctname {get;set;}
    //public Integer acctphone{get;set;}
    public account[] acct {get;set;}
    public pageReference search(){
       
        /* SOSL, SOQL,DYNAMIC Queries are places In this method*/
        
       //acct = (Account[])[FIND: acctname IN ALL FIELDS RETURNING Account (Id, Name,industry)][0];
      acct = [SELECT ID,NAME,industry from account WHERE NAme =: acctname];
      // acct= Database.query('SELECT name,id,industry FROM Account WHERE Name = \''+acctname+'\''); 
                            // the "(\')"" means "(')"
        return null;
    }    
    //page refrence ?id=<>
}