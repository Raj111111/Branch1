trigger RequirementTrigger on Requirement__c (before insert, before update) {
	// for insert
    if(Trigger.isinsert){
		for(Requirement__c r : Trigger.new){
            if(r.Property_Mngr__c != null){
      			r.OwnerId = r.Property_Mngr__c;                
			}
        }
    }
    // for update
    if(Trigger.isUpdate){
		for(Requirement__c r : Trigger.new){
            if(r.Property_Mngr__c != null && (r.Property_Mngr__c != Trigger.oldMap.get(r.id).Property_Mngr__c) ){
      			r.OwnerId = r.Property_Mngr__c;                
			}
        }
    }
   
    /* if(trigger.isupdate){
        for(Requirement__c R : re){
            if(R.OwnerId == u.Name){
                R.OwnerId = R.Property_Mngr__c;
            }
        }
    }*/
}