public class ContactAndLeadSearch {
    
    public static List<List<SObject>> searchContactsAndLeads(string parameter) {
        
        Account acct = new Account (
        	Name 					= 'Smith Computing',
        	Phone 					= '(415) 555-1212',
        	NumberOfEmployees 		= 50,
        	BillingCity 			= 'San Francisco');
        insert acct;
        ID acctID 					= acct.ID;
        
        Contact con = new Contact (
        	FirstName 				= 'Carol',
        	LastName			    = 'Smith',
        	Phone					= '(415) 555-1212',
        	Department 				= 'Wingo',
        	AccountId 				= acctID);
        insert con;
        
        Lead theLead 				= new Lead(
        	FirstName 				= 'Jim',
        	LastName 				= 'Smith',
        	Phone 					= '(111) 111-1111',
        	Company 				= 'IGATE',
        	LeadSource 				= 'Web');
        insert theLead;
        
        List<List<SObject>> theList = [FIND: parameter IN ALL FIELDS RETURNING Contact(FirstName,LastName), Lead(FirstName, LastName)];
        
        return theList;
    }

}