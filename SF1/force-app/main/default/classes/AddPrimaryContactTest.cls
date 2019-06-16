@IsTest
public class AddPrimaryContactTest {
@isTest static void TestList()
     {
         List<Account> Teste = new List <Account>();
         for(Integer i=0;i<50;i++)
         {
             Teste.add(new Account(BillingState = 'California', name = 'Test'+i));
         }
         for(Integer j=0;j<50;j++)
         {
             Teste.add(new Account(BillingState = 'New York', name = 'Test'+j));
         }
         insert Teste;

         Contact co = new Contact();
         co.FirstName='demo';
         co.LastName ='demo';
         insert co;
         
         String state = 'California';
      
          AddPrimaryContact obj = new AddPrimaryContact(co, state);
          Test.startTest();
            system.enqueueJob(obj);
          Test.stopTest();
         system.assertEquals(50, [SELECT count() FROM Account WHERE Billingstate = 'California']);
      }
}