@IsTest
public class LeadProcessorTest {
    static testMethod void testMethod1(){
        List<Lead> listLead = new List<lead>();
        	for(integer i=0; i<200; i++){
            lead l = new lead();
            l.LastName = 'lead' + i;
            l.Company ='demo'+i;
            listLead.add(l);
        }
        insert listLead;
        Test.startTest();
        	LeadProcessor objec = new LeadProcessor();
        	Database.executeBatch(objec);
        Test.stopTest();
       /* lead li = [SELECT id, leadsource From Lead Limit 1];
        system.assertEquals('Dreamforce', li.leadsource);*/
    }
}