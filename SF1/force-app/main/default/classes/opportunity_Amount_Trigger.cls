public class opportunity_Amount_Trigger {
  
    public  static void method(list<opportunity> opps){
         decimal total = 0;
        for(opportunity opp : [select amount from opportunity where createdbyId = :userinfo.getUserId()
                             								AND createdDate = today]){
            total += opp.Amount;
                  
        }
        for(opportunity o: opps){
            total += o.Amount;
            if(total > 5000)
                o.addError('canot be > 5000');
        }                                                      
        
    }
}