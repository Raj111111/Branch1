@IsTest
private class AccountManagerTest {
 //Helper
    static Id createRecord(){
        Account a = new Account(Name = 'Test Account');
        insert a;
        contact c = new contact(LastName = 'Test contact', AccountId = a.Id);
        return a.Id;
    } 
    
    private static testmethod void getAccountTest(){
        Id AccId = createRecord();
        RestRequest RR = new RestRequest();
        RR.requestUri = 'https://designmysystem-dev-ed.my.salesforce.com/services/apexrest/Accounts/'+ AccId +'/contacts' ;
        RR.httpMethod = 'GET';
        RestContext.request = RR;
        //call method
        Account thisAccount = AccountManager.getAccount();
        system.assertEquals('Test Account', thisAccount.Name);
    }
}