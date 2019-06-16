({
    getValues: function(component, event) {
        var action = component.get("c.getListValues");
        action.setCallback(this, function(response) {
            console.log('response: ' + action);
            var status = response.getState();
            console.log('response: ' + status);
            if (status === "SUCCESS") {
                var stringItems = response.getReturnValue();
                console.log('stringItems: ' + stringItems);
                component.set("v.listName", stringItems);
            }
        });
        $A.enqueueAction(action);
    }
})