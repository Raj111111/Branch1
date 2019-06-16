({
	handleClick : function(cmp, event, helper) {
        var number1 = cmp.get('v.Anumber');
        var number2 = cmp.get('v.Percentage');
        alert(number1);
        alert(number2);
		var sum = (parseInt(number1) + parseInt(number2));
        cmp.set('v.color', sum);
	}
})