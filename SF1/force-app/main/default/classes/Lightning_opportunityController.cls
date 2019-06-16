public class Lightning_opportunityController {
    
@AuraEnabled
        Public static List<string> getListValues(){       
            String[] arrayItems = new String[]{ 'red', 'green', 'blue' };
            system.debug('loaded = ' +arrayItems );
        return arrayItems;
        
    } 
}