trigger RequirementsTrigger on Requirement__c (before insert, before update) {
    if(Trigger.isBefore && Trigger.isInsert) {
        RequirementsHelper.checkUseringroup(Trigger.new);
    }
}