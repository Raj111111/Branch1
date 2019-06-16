trigger MaintenanceRequest on Case (after update, after insert) {
   // if(Trigger.isAfter && (Trigger.isUpdate || Trigger.Isinsert)){
    MaintenanceRequestHelper.caseCreation(Trigger.new);
    system.debug('Show trigger ==>');
    //}
}