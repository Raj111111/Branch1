global class LeadProcessor implements Database.Batchable<Sobject>{
	
    global Database.QueryLocator start(Database.BatchableContext bc){
        return database.getQueryLocator('SELECT id, Leadsource, name FROM Lead');
    }
    global void execute(Database.BatchableContext bc, List<lead> scope){
        List<Lead> UpdateLeads = new List<Lead>();
        for(Lead L : scope){
            if(L.leadsource == null || L.leadsource != 'Web'){
                L.leadsource = 'Dreamforce';
                UpdateLeads.add(L);
            }
        }
        Update UpdateLeads;
    }
    global void finish(Database.BatchableContext bc){
        
   }
}