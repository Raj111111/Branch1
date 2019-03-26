@isTest
private class TestContactTrigger {
    @testSetup static void dataprep() {
    	Account a = new Account();
        a.Name = 'TESTAccount';
        a.BillingCity='Fairfax';
        a.BillingState='VA';
        a.BillingStreet='100 First St';
        a.BillingCountry='USA';
        a.BillingPostalCode='20001';
        insert a;
        List<Contact> contacts = new List<Contact>();
        for(Integer i=0; i<200; i++){
			Contact c = new Contact();
			c.AccountId=a.Id;
			c.LastName='TEST123';
			contacts.add(c);      
            //contacts.add(new Contact(AccountId=a.Id,LastName='TEST123'));
        }
        insert contacts;
        /*
        Contact c = new Contact();
        c.AccountId=a.Id;
        c.LastName='TESTCont1';
        c.Email='test@test.com';
        insert c;
        Contact c1 = new Contact();
        c1.AccountId=a.Id;
        c1.LastName='TESTCont2';
        c1.Email='test@test.com';
        insert c1;
		*/
        System.assertEquals(true, true);
    }
    @isTest static void testAccountExist() {
        List<Account> accounts = [SELECT Id, Name FROM Account];
        System.assertEquals(1,accounts.size());
    }
    @isTest static void testContactsExist() {
        List<Contact> contacts = [SELECT Id FROM Contact];
        System.assertEquals(200,contacts.size());
    }
    @isTest static void validateUpdate() {
        Account acct = [SELECT Id, BillingCity, BillingState, BillingCountry, BillingStreet, BillingPostalCode, Name FROM Account];
        acct.BillingCity='Chicago';
        //acct.BillingStreet='100 First St';
        acct.BillingState='IL';
        acct.BillingPostalCode='60043';
        Test.startTest();
        update acct;
        Test.stopTest();
        List<Contact> contacts = [SELECT Id, AccountId FROM Contact WHERE MailingCity='Chicago'];
        System.assertEquals(200, contacts.size());
        List<Account> accounts = [SELECT Id FROM Account WHERE BillingCity='Chicago'];
        System.assertEquals(1,accounts.size());
    }
    @isTest static void validateNoUpdate() {
        Account acct = [SELECT Id, BillingCity, BillingState, BillingCountry, BillingStreet, BillingPostalCode, Name FROM Account];
        //acct.BillingCity='Chicago';
        //acct.BillingStreet='100 First St';
        acct.BillingState='VA';
        //acct.BillingPostalCode='60043';
        Test.startTest();
        update acct;
        Test.stopTest();
        List<Account> accounts = [SELECT Id FROM Account WHERE BillingState='VA'];
        System.assertEquals(1,accounts.size());
    }
}