trigger findDubTrigger on Lead (before insert, before update) {
    for(Lead Elead : Trigger.new){
        if(Elead.Email != null){
            List<contact> clist = [SELECT Id FROM contact Where Email = :Elead.Email];
            if(clist.size() > 0){
                Elead.addError('Email id already exist in contacts Bro!!');
    
            }
        }
    }
}