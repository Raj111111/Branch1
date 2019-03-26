public class CustomerCheckTotalprice {
    public static void checkTotalprice(Customers__c[] clist){
        for(Customers__c c : clist){
            if(c.Done__c == true){
                c.Total_Amount__c = c.Total_Amount__c ;
                
            }
            
        }
    }

}