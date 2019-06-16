public class OlderAccountsUtility {
    public static void updateOlderAccounts(){
        Account[] oldAcct = [SELECT id, description 
                             FROM Account
                             ORDER BY createddate ASC 
                             LIMIT 5];
        for(Account a: oldAcct){
           a.description = 'Heritage Account';  
        }
        update oldAcct;
    }
}