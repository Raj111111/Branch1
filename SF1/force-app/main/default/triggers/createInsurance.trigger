trigger createInsurance on Contact (after insert ,before update) {


  List<insurance__c> inList=new List<insurance__c>();
  set<id> setofContacts=new set<id>();

  List<contact> statusofcall;
 //statusofcall= emailsender.emailgenerater(trigger.new,'contact object');
 
 system.debug(statusofcall[0].firstname+'YYYYYYYYY');

  /* for(contact c: trigger.new){
   
       if(c.Insurance_Eligible__c==true){
         
           insurance__c ins=new insurance__c();
           ins.Contact__c=c.id;
           ins.Insurance_Type__c='Life';
           
       inList.add(ins);
         
       }
       
     if(trigger.isupdate)  
   if(c.Insurance_Eligible__c ==false && trigger.oldmap.get(c.id).Insurance_Eligible__c==true){
   
       
     setofContacts.add(c.id);
   
   }
   
   
   
   }// end of for
   
   
   
   
   
   list<insurance__c> insuranceListforDelete=new list<insurance__c>();
   
   insuranceListforDelete.add([select id,name,Insurance_Type__c from insurance__c where Contact__c=:setofContacts]);
   
   if(!insuranceListforDelete.isempty())
    delete insuranceListforDelete;
   insert inList;
   


*/





}