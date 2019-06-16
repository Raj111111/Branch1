global class DailyLeadProcessor implements schedulable{
    global void execute(SchedulableContext ctx){
        List<Lead> LList = [SELECT id, Leadsource 
                            FROM Lead 
                            WHERE Leadsource = '' 
                            LIMIT 200]; 
        
        for(Lead l : LList){
            if(l.leadsource == null){
                l.leadsource = 'Dreamforce';
            }
        }
        update LList;
    }
}