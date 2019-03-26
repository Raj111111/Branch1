public class ActionSupport_Calss {
    Integer count= 0;
    public PageReference incrementCounter() {
           count = 0;
        	count++;
            return null;
        
    }
  public Integer getCount() {
        return count;
    }


}