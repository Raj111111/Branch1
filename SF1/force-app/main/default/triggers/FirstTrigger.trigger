trigger FirstTrigger on account(before insert, after insert, before update){
    
    if(Trigger.isInsert && Trigger.isBefore) {
        for(Account a : trigger.new) {
            if(a.Phone != '1234') {
                a.Phone.addError('Phone number is not 1234');
            }    
        }
    }
    
    if(Trigger.isInsert && Trigger.isAfter) {
        for(account a: trigger.new){
            if(a.Id != null){
                System.debug('record is created');
                List<Messaging.SingleEmailMessage> emails=new List<Messaging.SingleEmailMessage>();           
                Messaging.SingleEmailMessage email=new Messaging.SingleEmailMessage();
                email.setsubject('Account '+a.Name+' is created successfully');
                email.setPlainTextBody('Account Created.');
                list<string> toaddress = new list<string>();
                toaddress.add('g.rajendar419@gmail.com');
                toaddress.add('rajkpreddy@gmail.com');
                email.setToAddresses(toaddress);            
                emails.add(email);
                Messaging.sendEmail(emails);
                //System.debug('email:' +emails);
                //a.addError('you cannot create account');
            }
        }
    }
}