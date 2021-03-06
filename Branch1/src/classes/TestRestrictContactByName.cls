@IsTest
public class TestRestrictContactByName {
    
    @isTest static void TestContactWithInvalidNameNotInserted(){
        
        // Test data setup (Arrange)
        String inputLastName = 'INVALIDNAME';
        Contact newContact = new Contact(LastName= inputLastName);	    
        
       // Perform test (Act)
        Test.startTest();
        try{
            insert newContact;
        }
        catch (DmlException dmlEx) {
        	
        	// Verify (Assert)
        	// In this case the insert should have been stopped by the trigger,
        	// so we need to verify that we got a dml exception (and specifically that we got the error message
           // that we were expecting).
        	String expectedMessage = 'The Last Name "'+ newContact.LastName+'" is not allowed for DML';
            System.assertEquals(expectedMessage, dmlEx.getDmlMessage(0));
        }
        Test.stopTest();
    }

}