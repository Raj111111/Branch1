public class Standard_Set_Controller {
    public Apexpages.StandardSetController setcon{
        get{
            if(setcon == null){
                setcon = new Apexpages.StandardSetController(Database.getQueryLocator([SELECT name, closedate FROM opportunity]));
            }
            return setcon;
        }
        set;
    }
    public list<opportunity> getopportunity(){
        return (list<opportunity>) setcon.getRecords();
    }
}