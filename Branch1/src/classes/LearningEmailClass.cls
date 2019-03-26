public class LearningEmailClass {
    public void singleEmail(contact[] clist){
       Messaging.SingleEmailMessage emails = new Messaging.SingleEmailMessage();
        List<string> L = new List<string>();
        L.add('raj@gmail.com');
    	emails.setToAddresses(L);		
    
    }
}