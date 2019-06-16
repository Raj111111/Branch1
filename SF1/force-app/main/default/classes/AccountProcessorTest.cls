@IsTest
public class AccountProcessorTest {
    public static testmethod void TestAccountProcessorTest(){
			Account a = new Account();
					a.Name = 'Testing account';
			 insert a;
        
			contact c = new contact();
					c.LastName = 'Testing contact';
					c.AccountId = a.id;
			 insert c;
        
			contact c2 = new contact();
					c2.LastName = 'Testing contact2';
					c2.AccountId = a.id;
			 insert c2;
        
			List<id> AcctId = new List<id>();
			AcctId.add(a.id);
        
 	Test.startTest();
		AccountProcessor.countContacts(AcctId);
 	Test.stopTest();
        
		Account accList = [Select id,Number_of_Contacts__c From Account Where id = : a.id LIMIT 1];
        system.assertEquals(2, accList.Number_of_Contacts__c);
	}
}