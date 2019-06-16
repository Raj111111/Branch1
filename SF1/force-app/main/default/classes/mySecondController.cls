public class mySecondController {
List<string> editableFields = new List<String>() ;

 /*   public mySecondController(ApexPages.StandardController controller) { 
        controller.addFields({
                editableFields.add('Industry');
                editableFields.add('AnnualRevenue');
            	editableFields.add('BillingCity')});
    }

   /* public List<String> editableFields {
        get {
            if (editableFields == null) {
                editableFields = new List<String>();
                editableFields.add('Industry');
                editableFields.add('AnnualRevenue');
                editableFields.add('BillingCity');
            }
            return editableFields ;
        }
        private set;
    }*/
    
    public set<string> methodcall(string p){
        set<string> st = new set<string>();
        list<Account> acct = [SELECT Name, Id, phone FROM Account WHERE phone LIKE '1%'];
        for(Account a : acct){
            String sname = a.name;
            st.add(sname);
            system.debug('name' +st);
        }
         return st;
    }
    Public List<Account> CreateAccount(){
		List<Account> a = [SELECT Name, Id, phone, (SELECT case.id FROM cases )FROM Account WHERE Name = 'Account'];  
			for(Account acc:a) {    
				delete acc;
			} 
			return a; 
			}
}