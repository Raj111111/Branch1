public with sharing class Password_Mgmnt_class {
    public list<Password_Management__c> PMlist {get;set;}
    
    public Password_Mgmnt_class(ApexPages.StandardController controller) {
       // PMlist = new list<Password_Management__c> ();
        
    }

    Public void PMdata() {
    PMlist = [SELECT id, Name, Digits__c From Password_Management__c ];
    
    }
}