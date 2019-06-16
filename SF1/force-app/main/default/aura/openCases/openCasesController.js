({
	doInit : function(component, event, helper) {
		var action = component.get("c.getDatafromServer");
        console.log('here we wr');
        action.setCallback(this,function(response){
           var state = response.getstate();
        	if(state === "SUCCESS"){
            	console.log('success?');
                //alert("From server: " + response.getReturnValue());
                component.set("v.cases", response.getReturnValue());
        	}    
        }); 
        $A.enqueueAction(action);
        	
	}
})