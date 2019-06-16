({
	doEventSearch : function(component, event, helper) {
		var searchEvents = event.getParam('searchKeyWord');
        var action = component.get('c.searchForContacts');
        action.setParams({
            Lname : searchEvents
        });
            action.setCallback(this, function(response){
            var statusResponse = response.getState();
            if(statusResponse === "SUCCESS"){
            	var responseRecieved = response.getReturnValue();
                component.set('v.contactRecord', responseRecieved);
            	console.log('responseRecieved', responseRecieved);
                console.log('v.contactRecord ----', component.get('v.contactRecord'));
            }else{
                console.log(response.getError());
            }
        });
        
        $A.enqueueAction(action);
	}
})