({
	createRecords : function(component, event, helper) {
		var action = component.get('c.createContact');
        action.setParams({
            	con : component.get('v.simpleNewContact'),
            	acctId : component.get('v.accountId')
        });
        action.setCallback(this, function(response){
              var status = response.getState();
            alert(status);
            if(status === 'SUCCESS' || status === 'DRAFT'){
                var responseValue = response.getReturnValue();
            }
        });
        
        $A.enqueueAction(action);
	}
})