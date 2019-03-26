public class PwdMgmt {
 public PwdMgmt(ApexPages.StandardController controller) {
        listOfpwd = [select id,Name,Digits__c,Upload_Photo__c from Password_Management__c];
    }

    public List<Password_Management__c> listOfpwd {get;set;}
    
   

}