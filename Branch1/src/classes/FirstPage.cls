public class FirstPage {
list<contact> clist;
//public boolean check;

public FirstPage(){
     clist = new list<contact>();
}
   // public string name{get;set;}
    
    public list<contact> getcontactreturn(){
        //if(check == false)
            clist.addAll([SELECT Id, name, lastname, email, phone FROM contact limit 5]);
            system.debug(clist+ 'cccc');
    return clist;
    }
    
    public void setcontactreturn(list<contact> updatedcon){
    
    clist = updatedcon;
    }
    
    public pagereference pagebutton(){
        
   //upsert clist;
        return null;
    }
    public pagereference Addrow(){
    contact c = new contact();
    clist.clear();
    clist.add(c);
    //check = true;
    return null;
    }
}