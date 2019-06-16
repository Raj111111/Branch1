public class myEmail {
    public static void myemailsender(string subject,string text,string address){  
    List<Messaging.SingleEmailMessage> mlist=new List<Messaging.SingleEmailMessage>();  //list created  
        Messaging.SingleEmailMessage email=new Messaging.SingleEmailMessage();          // instance reated
            email.setsubject('ima craeting singleemil trial');                          //added sun to variable
            email.setPlainTextBody('text here whatever the body is..');                 //added body to variable
            //email.setToAddresses('g.rajendar419@outlook.com');
    
    list<string> sendto = new list<string>();
        sendto.add('g.rajendar419@outlook.com');
            email.setToAddresses(sendto);
            
            
    mlist.add(email);
        messaging.sendEmail(mlist);
    
}   
    
}   


                            /*TRIGGER

trigger myFirstEmail on contact (before insert,before update,before delete, after insert, after update, after delete ) {

   contact[] C = Trigger.new;

   myEmail.myemailsender(mlist);
}
*/