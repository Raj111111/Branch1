public class controllerclass {

string M = 'welcome';
Account acc;


    public string getm(){
    return M;
        }   
    
    public Account getacc(){
    return acc;
        }
        
    public pagereference buttongetrecord(){
        acc = [SELECT name,phone,ShippingCity FROM Account WHERE name='raj'];
        return page.apartment;
    }    
}