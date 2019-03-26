public class NewCaseListController {
	public list<case> result;
    private static string str = 'raj';
    //system.debug('sho=='+str);
    public list<case> getNewCases(){
        result = [SELECT Id,CaseNumber FROM case WHERE status ='new'];
        return result;
    }
  
   }