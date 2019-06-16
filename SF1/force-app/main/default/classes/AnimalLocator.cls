global class AnimalLocator {
     public static string GetAnimalNameById(integer id){
        Http        p   = new Http();
        HttpRequest HR  = new HttpRequest();
                    HR.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+id);
                    HR.setMethod('GET'); 
       HttpResponse HS  = p.send(HR);
        string name = '';
        
        if(HS.getStatusCode() == 200){
            map<string,object> maping  = (map<string,object>)json.deserializeUntyped(HS.getBody());
            Map<string,object> listing = (map<string,object>) maping.get('animal');
            name = string.valueof(listing.get('name'));
        }
        return name;
    }
    
}