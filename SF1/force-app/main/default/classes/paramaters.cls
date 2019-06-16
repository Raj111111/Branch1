public class paramaters {
// for custom controller page
    public Apexpages.StandardSetController setparm{
        get{if(setparm == null)
            setparm = new Apexpages.StandardSetController(Database.getQueryLocator([SELECT id, name,phone FROM Account]));
           		return setparm;
           }
        set;
    }
    public list<Account> getAcc(){
        return (List<Account>) setparm.getRecords();
    }
    public pageReference go(){
        ID reff = system.currentPageReference().getparameters().get('id');
        pageReference nextpage = new pageReference('https://na16.salesforce.com/home/home.jsp?id='+reff);
        return nextpage;
    }
}