public class HotelHelper {
    
    public void addFields(List<HotelMenu__c> hotels){
        for(HotelMenu__c hm : hotels){
            if(hm.price__c == null){
                hm.price__c = hm.quantity__c * 10;
            }
        }
        
    }
   
    
        
    }