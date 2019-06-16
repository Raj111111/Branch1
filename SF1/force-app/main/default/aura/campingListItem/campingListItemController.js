({
	packItem : function(component, event, helper) {
		var v1 = component.get("v.item");
        	v1.Packed__c = True;
        component.set("v.item", a);
        
        var btnClicked = event.getSource();
        btnClicked.set("v.disabled",true);
	}
})