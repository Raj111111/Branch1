public class QuantityLimit {
    public void quantityAndprice(List<HotelMenu__c> hotels){
        for(HotelMenu__c HM: hotels){
           HM.price__c = HM.quantity__c * 20;
        }
   
       
    }
    
    public void quantityLimited(List<HotelMenu__c> hotels){
        for(HotelMenu__c Q : hotels){
            if(q.quantity__c > 10){
                q.addError('Quantity field cannot more than 10');
                
            }
            
        }
    }
  
    public void checkTotal(Customers__c[] cli){
        for(Customers__c c : cli){
            if(c.Total_Amount__c == 100){
                c.Done__c = true;
            }
        }
    }
}