public class displayfields{
//list<contact> clist;
public list<contact> c {get;set;}
//list<account> alist {get;set;}
public string AccountId {get;set;}
//public contact contactId {get;set;}
public Apexpages.standardcontroller crtl;
public displayfields(Apexpages.standardcontroller std){
crtl= std;
AccountId = System.currentPageReference().getParameters().get('Id');

c = [SELECT id, name, AccountNumber__c,email,phone, Created_insurance_type__c, Level__c FROM contact Where Account.Id =: AccountId   ];

}

}