@IsTest
public class DailyLeadProcessorTest {
    public static String CRON_EXP = '0 0 1 * * ?';
@IsTest
    static void setup(){
     List<lead> ListLead = new List<lead>();
        for(integer i=0;i<200;i++){
            ListLead.add(new lead(LastName = 'lead'+i, company = 'ABC', Status = 'Working Contacted'));
        }
        insert ListLead;
        
        Test.startTest();
        	//Lead l = [SELECT id, leadsource FROM Lead WHERE id IN : ListLead LIMIT 1];
        	String jobId = System.schedule('DailyLeadProcessor', CRON_EXP, new DailyLeadProcessor()); 
        Test.stopTest();
        //system.assertEquals('Dreamforce', l.leadsource);
    }
}