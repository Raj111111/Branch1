({
    onRender : function(component, event, helper) {
        var contactlis = component.get('c.getContacts');
        alert(contactlis);
        contactlis.setCallback(this, function(a) {
            if (a.getState() === "SUCCESS") {
                console.log('SUCCESS');
                 alert(contactlis);
                var contactList = a.getReturnValue();
                console.log(contactList);
                component.set('v.ListOfContacts',contactList); 
            }
            
            // Display toast message to indicate load status
          /*  var toastEvent = $A.get("e.force:showToast");
            if (a.getState() === "SUCCESS"){
                toastEvent.setParams({
                    title : 'Success Message',
                    message: 'Contact is retrieved successfully',
                    //messageTemplate: 'Record {0} created! See it {1}!',
                    duration:' 5000',
                    key: 'info_alt',
                    type: 'success'
                    //mode: 'pester'
                });
            }
            else {
                toastEvent.setParams({
                    title : 'Error Message',
                    message:'Mode is pester ,duration is 5sec and Message is not overrriden because messageTemplateData is not specified',
                    //messageTemplate: 'Mode is pester ,duration is 5sec and Message is overrriden',
                    duration:' 5000',
                    key: 'info_alt',
                    type: 'error',
                    mode: 'pester'
                });
            }
            toastEvent.fire();*/
        });
        $A.enqueueAction(contactlis);
    }
})