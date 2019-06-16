trigger TriggerMapContext on Case (before insert) {

    system.debug('⇛⇛'+trigger.oldmap);
    system.debug('⇛⇛'+trigger.newmap);
    /*
    for(case cNewMap : trigger.new){
        string oldcaseId = trigger.oldmap.get(cNewMap.id).status;
        	system.debug('⇛⇛oldcaseId- '+oldcaseId);
        string newcaseId = trigger.newmap.get(cNewMap.id).status;
        	system.debug('⇛⇛oldcaseId - '+newcaseId);
    }*/
}