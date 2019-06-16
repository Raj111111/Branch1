@IsTest
Private class TestClass_Con4 {
    static Testmethod void testclass(){
        custom_Country__c cc = new custom_Country__c();
        cc.Name = 'USA';
        cc.state__c = 'PA';
        cc.zip_code__c = '18508';  
     Insert cc;
     system.debug('Inserted CC = ' +cc);
        
        custom_Country__c c = [SELECT Name,state__c, zip_code__c 
                               FROM custom_Country__c 
                               WHERE id =: cc.Id];
        Account a = new Account();
        a.BillingPostalCode = c.zip_code__c;
         ApexPages.StandardController sc = new ApexPages.StandardController(a);
         Con4 cvf = new Con4(sc);
        
        PageReference pageRef = Page.CustomVF;
        system.assertEquals(a.BillingState, cc.state__c);
        
    }
}