public class ContactSearch {

    @AuraEnabled
    public  static list<contact> searchForContacts(string Lname){
	string NameLike = '%' +Lname + '%';
        system.debug('NameLike ---> ' +NameLike);
    contact[] clist= [SELECT Lastname, MailingPostalCode, Title, Email   
                 FROM contact 
                 WHERE Lastname LIKE :NameLike ];
        
        system.debug('xxxxxxxxxx = ' +clist);
        
        return clist;
    }
   
    }