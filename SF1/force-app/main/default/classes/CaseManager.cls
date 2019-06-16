@RestResource(urlMapping='/Cases/*')

global with sharing class CaseManager {
    
@HttpGet  // Retrieve record
    
    global static case getCaseById()
    {
        
        RestRequest request     = Restcontext.Request;
        RestResponse Response   = Restcontext.Response;
        String CaseID           = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
                 system.debug('CaseID =>' +CaseID);
        Case result             = [SELECT CaseNumber,Subject,Status,Origin,Priority
                                    FROM Case 
                                    WHERE ID =: CaseID];
                                    
        return result;
        
    }

@HttpPost //Cretate record
    global static ID createCase(String subject, String status,String origin, String priority)
    {
        Case createCases    = new Case();
            createCases.subject     = subject;
            createCases.status      = status;
            createCases.origin      = origin;
            createCases.priority    = priority;
        Insert createCases;
        
        Return createCases.id;
        
    }
    
    
@HttpPut //Upsert record
    global static ID UpsertCase(String subject, String status,String origin, String priority)
    {
        Case UpsertCases    = new Case();
            UpsertCases.subject     = subject;
            UpsertCases.status      = status;
            UpsertCases.origin      = origin;
            UpsertCases.priority    = priority;
        Insert UpsertCases;
        
        Return UpsertCases.id;
        
    }
    
@HttpPatch
    global static ID updateCaseFields() 
    {
        RestRequest request         = RestContext.request;
        String caseId               = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        Case thisCase               = [SELECT Id 
                                        FROM Case
                                        WHERE Id = :caseId];
        // Deserialize the JSON string into name-value pairs
        Map<String, Object> params  = (Map<String, Object>)JSON.deserializeUntyped(request.requestbody.tostring());
        // Iterate through each parameter field and value
            for(String fieldName : params.keySet()) 
            {
            // Set the field and value on the Case sObject
                thisCase.put(fieldName, params.get(fieldName));
             }
        update thisCase;
        return thisCase.Id;
    }   
    
    
    
}