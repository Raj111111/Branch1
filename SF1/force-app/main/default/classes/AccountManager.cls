@RestResource(UrlMapping = '/Accounts/*/contacts')
global class AccountManager {
    @HttpGet
    global static Account getAccount(){
        RestRequest req = Restcontext.request;
        string accId = req.RequestURI.substringBetween('Accounts/', '/contacts');
        Account acc	 = [SELECT Id, Name,(SELECT id, Name FROM Contacts) FROM Account WHERE id = :accId];
        return acc;
    }
}