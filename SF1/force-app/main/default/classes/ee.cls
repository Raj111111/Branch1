public class ee {
    //public Account acct{get;set;}
    list<Account> acct{get;set;}
    list<Account> acct2 = new list<Account>();
    public ee(){
        acct = [SELECT id, Name, Phone
               FROM Account
               WHERE Name LIKE '%a'];
        system.debug('acct query' +acct);
    }
    public void method(){
        for(Account acc : acct){
            if(acc.name != 'Burlington Textiles Corp of America'){
                acc.name = 'cahanged';
            acct2.add(acc);
            } 
        }
        update acct2;
        system.debug('check = '+acct2);
    }
}