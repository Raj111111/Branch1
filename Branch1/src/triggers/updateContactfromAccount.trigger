trigger updateContactfromAccount on Account (after update ) {
    // declarations
    Set<Id> accountIds = new Set<Id>();
    List<Contact> contactstoUpdate = new List<Contact>();
    // identify the accounts whose address is changed, i.e. any of the city, state, zipcode, street, country
    for(Account a : Trigger.new){
        if(a.BillingCity != trigger.oldmap.get(a.id).BillingCity ||
          a.BillingState != trigger.oldmap.get(a.id).BillingState ||
          a.BillingPostalCode != trigger.oldmap.get(a.id).BillingPostalCode ||
          a.BillingCountry != trigger.oldmap.get(a.id).BillingCountry||
          a.BillingStreet != trigger.oldmap.get(a.id).BillingStreet){
            //changedAccounts.add(a); 
            accountIds.add(a.Id);
        }     
    }
    /*
    // Query the accounts with their contacts for the accounts whose address is changed
    for(Account a: [SELECT Id, (SELECT Id, AccountId, MailingStreet, MailingCity, MailingState, MailingPostalCode, MailingCountry 
                                FROM Contacts) 
                    FROM Account 
                    WHERE Id IN :accountIds]) {
            List<Contact> contacts = a.Contacts; 
            for(Contact c: contacts) {
                c.MailingStreet = trigger.newMap.get(c.AccountId).BillingStreet;
                c.MailingCity = trigger.newMap.get(c.AccountId).BillingCity;
                c.MailingCountry = trigger.newMap.get(c.AccountId).BillingCountry;
                c.MailingPostalCode = trigger.newMap.get(c.AccountId).BillingPostalCode;
                c.MailingState = trigger.newMap.get(c.AccountId).BillingState;
                contactstoUpdate.add(c);
            }
    } 
    */
    for(Contact c: [SELECT Id, AccountId, MailingStreet, MailingCity, MailingPostalCode, MailingCountry, MailingState 
                    FROM Contact WHERE AccountId IN :accountIds]) {
        c.MailingStreet = trigger.newMap.get(c.AccountId).BillingStreet;
        c.MailingCity = trigger.newMap.get(c.AccountId).BillingCity;
        c.MailingCountry = trigger.newMap.get(c.AccountId).BillingCountry;
        c.MailingPostalCode = trigger.newMap.get(c.AccountId).BillingPostalCode;
        c.MailingState = trigger.newMap.get(c.AccountId).BillingState;
        contactstoUpdate.add(c);
    }
    try {
        update contactstoUpdate;   
    }
    catch(DMLException e) {
        System.debug(Logginglevel.ERROR,'unable to update the contacts'+e.getMessage());
    }
    //update contactstoUpdate;
}