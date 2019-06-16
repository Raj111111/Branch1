trigger HmCheckTotal on HotelMenu__c (before insert) {
    QuantityLimit QL = new QuantityLimit();
    	QL.quantityAndprice(Trigger.new);

}