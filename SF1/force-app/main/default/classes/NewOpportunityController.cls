public class NewOpportunityController{                //Class Name
    Account acc;                                        // variables
    Contact con;
    Opportunity opp;
    
    public Account readAccount(){                        // readAccount method
        if(acc == null)  
        Account acc = new Account();
            return acc;    
    }
    
    public Contact readContact(){                        //readContact method
        if(con== null)
        Contact con = new Contact();
        return con;
    }
    
    public Opportunity readOpportunity(){                //readOpportunity method
        if(opp == null)
        Opportunity opp = new Opportunity();
        return opp;
    }
    
    public pagereference page1(){                        //page reference to visualforce page(VFwizard)
        return page.VFwizard;  
    }
    
    public pagereference page2(){
        return page.VFwizard2;
    }
 
     public pagereference page3(){
        return page.VFwizard3;
    }
       
}