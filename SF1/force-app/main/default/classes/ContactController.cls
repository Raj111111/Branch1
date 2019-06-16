public class ContactController {
@AuraEnabled
    Public static List<contact> getContacts(string accid){
        list<contact> CList = [SELECT Id, Name, Account.Name, Lastname, MailingStreet, Phone, Email, LeadSource
                                FROM contact
                              Where Phone != null AND AccountId =: accid];
        	return CList;
    }
}