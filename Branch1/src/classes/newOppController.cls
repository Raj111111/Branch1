public class newOppController{                //Class Name
    Account acc;                                        // variables
    Contact con;
    Opportunity opp;
    
    public Account getAccount(){                        // readAccount method
        if(acc == null)  
        Account acc = new Account();
            return acc;    
    }
    
    public Contact getContact(){                        //readContact method
        if(con== null)
        Contact con = new Contact();
        return con;
    }
    
    public Opportunity getOpportunity(){                //readOpportunity method
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
     public PageReference save() {
     
     acc.phone = con.phone;
          insert acc;
      con.accountId  = acc.id;
          insert con;
     opp.accountId = acc.id;
          insert opp;
          
PageReference opptyPage = new PageReference('/' + opportunity.id);
        opptyPage.setRedirect(true);
            return opptyPage;
}
}