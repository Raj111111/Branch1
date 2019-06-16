trigger contactoppTrigger on Contact (After insert) { 
    List<opportunity> opps = new List<opportunity>(); 
    
    for (contact c: Trigger.New){
       opportunity o = new opportunity ();
        o.AccountId = o.AccountId;
        o.Amount = 2323;
        o.CloseDate = system.today();
        o.Type = 'New customer';
        o.Name = 'www';
        o.StageName = 'Qualification';
          opps.add(o);
    }
    insert opps;

}