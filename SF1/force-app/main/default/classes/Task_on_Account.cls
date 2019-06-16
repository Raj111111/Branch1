public class Task_on_Account {
   public integer count{get;set;}
    public string Name{get;set;}
    public string s {get;set;}
    public Task_on_Account(){
        count = 0;
        name = 'raj';
    }
    public void save(){
        count ++;
         s  = name +1;
    }
}