trigger libraryautomation on library__c (after insert) {
	list<library__c> li = trigger.new;
    for(library__c l : li){
        if(l.done__c == true){
            insurance__c i = new insurance__c();
            	i.insurence_name__c = l.bookname__c +'student';
           contact c = new contact();
            	i.Contact__c = c.id;
            	i.library__c = l.Id ;
  					insert i;
        }
        
    }
}