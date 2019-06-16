public class RequirementsHelper {
	public static void checkUseringroup(list<Requirement__c> requirements){
		Set<Id> userIds = new set<Id>();
        // trying to capture the ids of the property managers
        for(Requirement__c req: requirements){
            if(req.Property_Mngr__c!=null) {
                userIds.add(req.Property_Mngr__c);
            }
		}
        
        Group grp = new Group();
        List<GroupMember> grpmem = new List<GroupMember>();
        String groupid;
        
        grp= [SELECT Id FROM Group WHERE DeveloperName ='Property_Mgrs_Group' LIMIT 1];
        groupid = grp.Id;
        grpmem = [SELECT Id, GroupId, UserorGroupId FROM GroupMember WHERE GroupId =:groupid and UserorGroupId IN :userIds];
        
        Map<Id,Id> groupmap = new Map<Id, Id>();
        for(GroupMember gm: grpmem) {
            groupmap.put(gm.UserorGroupId, gm.Id);
        }
        
        for(Requirement__c req: requirements) {
            if(req.Property_Mngr__c!=null && groupmap.containsKey(req.Property_Mngr__c)==false)  {
                req.Property_Mngr__c.addError('Property manager is not in the group, please select the appropriate user');
            }                
        }
    
    }
	
}