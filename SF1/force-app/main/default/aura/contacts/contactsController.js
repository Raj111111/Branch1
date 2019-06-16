({
    doInit: function(component, event, helper) {
        var action = component.get('c.getContacts');
        action.setParams({
            accid : component.get('v.recordId'),
        });
        action.setCallback(this, function(response){
            var responseValue = response.getReturnValue();
            console.log('responseValue', responseValue);
            component.set('v.contacts', responseValue);
        });
        $A.enqueueAction(action, false);
    },
    
    
    goToRecord : function(component, event, helper) {
        var eventSource = event.getSource();
        var Id = eventSource.get('v.name');
        var navEvt = $A.get("e.force:navigateToSObject");
        navEvt.setParams({
            "recordId": Id,
            "slideDevName": "detail"
        });
        navEvt.fire();
    },
    
})