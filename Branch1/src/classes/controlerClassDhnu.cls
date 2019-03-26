public class controlerClassDhnu {

 public list<contact> clist;
 public boolean reload;

 public controlerClassDhnu (){
 clist = new list<contact>();
 reload = false;
 }
 public list<contact> getContact(){
     if(reload == false)
    clist = [select id, phone, Lastname, Email from contact limit 5];
    
             return clist;
 }



public pagereference savedata(){

   update clist;
    return null;
}


public pagereference addRow(){
    contact c = new contact();
    clist.clear();
    clist.add(c);
    reload = true;
    return null;
}

}