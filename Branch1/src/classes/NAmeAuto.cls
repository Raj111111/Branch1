public class NAmeAuto {
string L;
string C;
    public void method(List<lead> llist){
        for(Lead l1 : llist){
            L = l1.lastname;
            C = l1.company;
            l1.CurrentGenerators__c = L+ '-' +C;
        }
    }
    
}