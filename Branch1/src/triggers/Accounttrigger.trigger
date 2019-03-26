trigger Accounttrigger on Account (After insert) {
//List<contact> clist = new List<contact>();
    for(Account acct : Trigger.new){ 
        contact c = new contact();
            c.LastName = 'abcd';
            insert c;
        }
    
}