trigger lib on library__c (before insert, before update) {
    list<library__c> libry = trigger.new;
    if(trigger.isinsert){
    for(library__c c : libry){
        if(c.bookname__c == c.bookname__c){
            c.addError('cant exist');
            
            
        }
    }
        
 }
  /*  if(trigger.isupdate){
        for(library__c c : libry){
        if(c.bookname__c == 'science'){
            c.priceofbook__c = 120;
        }
       } 
    }*/
}