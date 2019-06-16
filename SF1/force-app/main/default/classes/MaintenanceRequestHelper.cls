public class MaintenanceRequestHelper {
    //Method
 public static void caseCreation(list<case> cases){
    List<case> listcases = new list<case>();
      for(case loopedcase : cases){
         if((loopedcase.Type == 'Repair' || loopedcase.Type == 'Routine Maintenance') && loopedcase.status == 'closed'){ 

            case newcase = new case();

            newcase.type = 'Routine Maintenance';
             
             newcase.ParentId = loopedcase.Id;
            
            newcase.Vehicle__c = loopedcase.Vehicle__c;

            newcase.Subject = 'this case is creating because of the old case closed';

            newcase.Date_Reported__c = system.TODAY();

            newcase.Date_Due__c = System.today() + 30;

      listcases.add(newcase);
}
}
      if(!listcases.isEmpty()){
            insert listcases;
          
          system.debug('Show me ==> ' +listcases);
        }
}   
}