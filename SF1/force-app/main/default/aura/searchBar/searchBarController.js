({
	onChanges : function(component, event, helper) {
		var componentEvent = component.getEvent('searchEvent');
        var keyWord = component.find('searchId').get('v.value');
        console.log('keyWord', keyWord);
        componentEvent.setParams({
            searchKeyWord : keyWord
        });
        componentEvent.fire();
	}
})