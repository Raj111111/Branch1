@isTest
public class assertions {
    @isTest public static void main(){
       integer i =50;
        integer j = 20;
        integer k = i+j;
        system.assertNotEquals(k=50, k=70);
       system.debug('after assertion');
    }
    
}