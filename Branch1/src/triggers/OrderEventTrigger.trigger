trigger OrderEventTrigger on Order_Event__e (after insert) {
    List<Task> ListTask = new List<Task>();
    For(order_Event__e event  : Trigger.new){
        If(event.Has_Shipped__c == true){    
            Task T = new Task();
            T.Status = 'new';
            T.Priority = 'Medium ';
            T.Subject = 'Follow up on shipped order ' + event.Order_Number__c;
            T.OwnerId = UserInfo.getUserId();
           ListTask.add(T);
        }
         
    }
    insert ListTask;
}