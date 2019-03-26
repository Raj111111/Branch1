public class ContactController {
@AuraEnabled
    Public static List<contact> getContacts(){
        list<contact> CList = [SELECT Id, Name, MailingStreet, Phone, Email, LeadSource
                                FROM contact];
        
        //Add isAccessible() check
	return CList;
    }
}