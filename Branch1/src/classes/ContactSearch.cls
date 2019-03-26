public class ContactSearch {
   
    public  list<contact> searchForContacts(string Lname, string Address){
    contact[] clist= [SELECT Lastname, MailingPostalCode, Title, Email   
                 FROM contact 
                 WHERE Lastname =: Lname AND
                       MailingPostalCode =:Address];
        
        system.debug('xxxxxxxxxx = ' +clist);
        
        return clist;
    }
   
    }