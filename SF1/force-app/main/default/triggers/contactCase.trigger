trigger contactCase on Contact (before insert, before update) {
    List<contact> contactList = new List<contact>();
    set<id> uniqueIds = New Set<id>();
    for(contact CNT : Trigger.new){
        If(CNT.Insurance_Eligible__c != True){
            CNT.Insurance_Eligible__c = True;
            If(CNT.LeadSource != null){
               CNT.LeadSource = 'Other'; 
                contactList.add(CNT);
            }
        }
        
    }
    Update contactList;
}