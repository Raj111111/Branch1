/*******
References:

https://developer.salesforce.com/forums/?id=906F0000000Ay4WIAS
https://developer.salesforce.com/forums/?id=906F000000099zbIAA
//https://myforcedomain2015-dev-ed.my.salesforce.com/services/oauth2/token
****/

Public class RetriveRealtimedata_REST {
         
         Public  static string EndpointURL = 'https://th-apex-http-callout.herokuapp.com/animals';
         Public  static string UserName = 'raj.dreamforce2015@gmail.com';
         Public  static string Password = 'Abhiraja2';   
       //Public  string EndpointURL = 'https://myforcedomain2015-dev-ed.my.salesforce.com'; --> Use this when us are going with Just user ID and Password.
    
   // GET  
    public static void deserialize() {
        Http h = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndPoint(EndpointURL);
        request.setHeader('Content-type', 'application/json');
        
       // req.setHeader('Authorization', 'OAuth '+UserInfo.getSessionId());

        request.setMethod('GET');
        //Use below if you are going with UserID and Password
        //Blob authorizevalue = blob.valueOf(UserName+':'+Password);        
        //String authorizationHeader = 'BASIC'+ encodingUtil.base64Encode(authorizevalue);
      /*  request.setHeader('Authorization', 'authorizationHeader');
        
        String clientId = '3MVG9sG9Z3Q1RlbfhodRTo8eStEaeGAPhU85MEGXXrp6m1T7Ev3P2sMsJXIRnXXx04rJGdG5lU2VkEKKFebDh'; //---Mention the Client ID from the Connected App
        String clientSecret = '6505208934456773470'; //---Mention the Client Secret from the Connected App
        String reqbody = 'grant_type=password&client_id='+clientId+'&client_secret='+clientSecret+'&username='+username+'&password='+password;
        request.setBody(reqBody);
        
        system.debug('==> ' +reqBody);
        //HttpResponse response = http.send(request);
        //System.debug('REST response is :: '+response);
        */
        
       HttpResponse Resp = h.send(request);
       String responsebody = Resp.getBody() ;
       system.debug('-->'+responsebody);
        
    }     
} 
        
        
        
        
        
        
    /* if (response.getStatusCode() == 200) {
         
    // Deserialize the JSON string into collections of primitive data types.
    Map<String, Account> results = (Map<String, Account>) JSON.deserializeUntyped(response.getBody());
            system.debug('Results==>' +results);
    // Cast the values in the 'animals' key as a list
    List<Account> Accounts = (List<Account>) results.get('Account');
    System.debug('Received Accounts ==>:'+Accounts);
        for (Object account: accounts) {
        System.debug(account);
        }
    }
        
        /* POST
         * 
        public static HttpResponse makePostCallout() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        request.setBody('{"name":"mighty moose"}');
        HttpResponse response = http.send(request);
        // Parse the JSON response
        if (response.getStatusCode() != 201) {
            System.debug('The status code returned was not expected: ' +
                response.getStatusCode() + ' ' + response.getStatus());
        } else {
            System.debug(response.getBody());
        }
        */
        
        
        
        
        
        //OAUTH
        
    /*
    
      public class RestTest {
    private static JSONObject oauthLogin(String loginUri, String clientId,
        String clientSecret, String username, String password) {
        HttpRequest req = new HttpRequest(); 
 
        req.setMethod('POST');
        req.setEndpoint(loginUri+'/services/oauth2/token');
        req.setBody('grant_type=password' +
            '&client_id=' + clientId +
            '&client_secret=' + clientSecret +
            '&username=' + EncodingUtil.urlEncode(username, 'UTF-8') +
            '&password=' + EncodingUtil.urlEncode(password, 'UTF-8'));
    
        Http http = new Http();
  
        HTTPResponse res = http.send(req);

        System.debug('BODY: '+res.getBody());
        System.debug('STATUS:'+res.getStatus());
        System.debug('STATUS_CODE:'+res.getStatusCode());
        
        return new JSONObject(res.getBody());
    }
    
    public static String restTest(String name) {
        // use <a href="https://test.salesforce.com" target="_blank" rel="nofollow">https://test.salesforce.com</a> for sandbox orgs
        JSONObject oauth = oauthLogin('<a href="https://login.salesforce.com'," target="_blank" rel="nofollow">https://login.salesforce.com',</a> 
            'YOUR_REMOTE_ACCESS_APP_CONSUMER_KEY',
            'YOUR_REMOTE_ACCESS_APP_CONSUMER_SECRET', 
            'USERNAME_IN_TARGET_ORG', 
            'PASSWORD_IN_TARGET_ORG');
            
        String accessToken = oauth.getValue('access_token').str,
               instanceUrl = oauth.getValue('instance_url').str;

        HttpRequest req = new HttpRequest(); 
 
        req.setMethod('GET');
        req.setEndpoint(instanceUrl+'/services/apexrest/TestRest?name='+name);
        req.setHeader('Authorization', 'OAuth '+accessToken);

        Http http = new Http();
  
        HTTPResponse res = http.send(req);

        System.debug('BODY: '+res.getBody());
        System.debug('STATUS:'+res.getStatus());
        System.debug('STATUS_CODE:'+res.getStatusCode());
        
        return res.getBody();
    }
}  
          
        
        
        
      */