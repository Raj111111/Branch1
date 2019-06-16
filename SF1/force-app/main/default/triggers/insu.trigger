trigger insu on insurance__c (before insert) {
    list<insurance__c> ins = trigger.new;
    for(insurance__c s : ins){
        if(s.Contact__c == 'Raj kotha'){
          s.Insurance_Type__c = 'good';  
            
            
        
       }  
        
     }

}