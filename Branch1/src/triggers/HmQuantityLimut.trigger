trigger HmQuantityLimut on HotelMenu__c (before insert) {
	QuantityLimit ql = new QuantityLimit();
    	ql.quantityLimited(Trigger.new);
    
}