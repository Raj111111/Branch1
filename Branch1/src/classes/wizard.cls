public class wizard {
    Account 	a = new account();
    contact 	c = new contact();
    opportunity o = new opportunity();
    
    public Account geta(){
        return a;
    }
    public contact getc(){
        return c;
    }
    public opportunity geto(){
        return o;
    }


    
    public pagereference account_page(){
        return page.account_page;
    } 
    public pagereference contact_page(){
        return page.contact_page;
    } 
    public pagereference opp_page(){
        return page.opp_page;
    } 
    public pagereference saveall_page(){
        insert a;
        c.AccountId = a.Id; //relates contact to parent account a
        insert c;
        o.AccountId = a.Id; // relates opp with parent account a
        insert o;
        return page.thanks_page;
    } 

}