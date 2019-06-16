public class Aura_controllerClass {
    
    @AuraEnabled
    	Public static List<contact> getContacts(string accId){
        List<contact> conList = new List<contact> ([SELECT id, Name, FirstName, LastName, Email, Phone 
                                 FROM contact 
                                 Where accountId =: accId]);
        
        return conList;
    }
    
    @AuraEnabled
    	Public static contact createContact(contact con, Id acctId){
        con.AccountId = acctId;
        insert con;
        return con;
    }
}