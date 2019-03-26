public with sharing class OpenCasesApexController {

 @AuraEnabled
    public static List<contact> getDatafromServer(){
        return[SELECT Id, Name, MobilePhone, LeadSource, Fax  
                FROM contact 
                WHERE OwnerId =: UserInfo.getUserId()];
        
    }
}