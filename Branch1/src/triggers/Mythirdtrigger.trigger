trigger Mythirdtrigger on Contact (before insert, before update,before delete,after insert ,after update,after undelete) {


 List<Messaging.SingleEmailMessage> emails=new List<Messaging.SingleEmailMessage>();
    for(contact s: trigger.new){
       
      
        if(trigger.isupdate && trigger.isafter){
        
          if(s.title=='SE' && s.title != trigger.oldmap.get(s.id).title){
          
           
           Messaging.SingleEmailMessage email=new Messaging.SingleEmailMessage();
           
           email.setsubject('title SE');
           email.setPlainTextBody('title chnaged to SE'); 
           List<string> toaddress=new List<string>();
            toaddress.add('sfdc.integration01@gmail.com');        
           email.setToAddresses(toaddress);
           
           emails.add(email);
          
           
          
          }
        
        }
       
    }//for
    
     Messaging.sendEmail(emails);
    
    for(contact c:trigger.old){
    
    
    }
  
}//trigger