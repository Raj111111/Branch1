public class TabPanelController {
	
    public list<Account> a;
    public string search1;
    public list<contact> result;
    
    public TabPanelController(apexpages.StandardController controller){    
    }
    
    public list<Account> getA(){
         a = [SELECT id, Name, phone, Fax FROM Account limit 10];  
        return a;
    }
    
    public pageReference savemethod(){
        pageReference p = new pageReference('003/o');
        return p;
    }
    public string getSearch(){
        return search1;
    }
    public void setSearch(string s){
        search1 = s;
    }
    
    public list<contact> getresult(){
        return result;
    }
    
    public pageReference find(){
    result = (list<contact>)[FIND :search1 RETURNING contact(Name)][0];
        return null;
    }
}