public class con4 {

    Account c = new Account();
    public con4(ApexPages.StandardController controller) {
       this.c = (Account)controller.getRecord();
    }
    
    
    public Pagereference fetch(){
    
        custom_Country__c cc = [select name,country__c, state__c, zip_code__c from   custom_Country__c where zip_code__c = :c.BillingPostalCode limit 1];
        c.BillingState = cc.state__c;
        c.BillingCountry = cc.name;
        return null;
    }

}