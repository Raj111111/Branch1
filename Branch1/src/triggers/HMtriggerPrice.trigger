trigger HMtriggerPrice on HotelMenu__c(before insert,before update){
    QuantityLimit s = new QuantityLimit();
    //List<HotelMenu__c> hotels = Trigger.new;
        //QuantityLimit.quantityAndprice(hotels);
        s.quantityAndprice(Trigger.new);
    }