// apex class for customertrigger which is being created on customer__c object
public class LibraryHelper {

    // static method for apply the discounts on collection of customer records i.e. list 
    public static List<Library__c>LibraryfieldInsert() {
        //process the each record using the for loop
        List<Library__c> libraries = new List<Library__c>();
        system.debug('www');
        for(Library__c cust: libraries){
        system.debug('fff'+ cust.bookname__c +'cccc' + cust.priceofbook__c);
            // this is the discount of 10% i.e. remaining 90% is the value of the membership fee. For example: 100 becomes 90
            if(cust.bookname__c == null){
            system.debug('if');
                cust.bookname__c = 'A';
                
            }
            
        }
        return libraries;
    }
}