trigger ClosedOpportunityTrigger on Opportunity (After insert, After Update) {
List<Task> subTasks = new List<Task>();
    for(Opportunity oppty : Trigger.new){
        if(oppty.StageName == 'Closed Won'){
            Task T = new Task();
            	 T.Subject = 'Follow Up Test Task';
            	 T.WhatId  = oppty.Id;
            subTasks.add(T);
        }
    }
    insert subTasks;
}