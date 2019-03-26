global class AccountProcessor {
@future
    
    public static void countContacts(List<id> AccountIds){
        list <Account> records = [SELECT id,Number_of_Contacts__c,(SELECT id From contacts) FROM Account WHERE id IN : AccountIds];
        for(Account a : records){
          integer i =  a.contacts.size();
          a.Number_of_Contacts__c = i;
        }
        
         update records;
    }
   
}