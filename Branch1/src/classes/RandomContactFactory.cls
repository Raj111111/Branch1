public class RandomContactFactory {
    public static list<contact> generateRandomContacts(integer numbers, string naming){
        List<contact> conList = new List<contact>();
        for(integer i = 0; i<numbers; i++){
            contact c 	= new contact();
            c.LastName 	= naming;
            c.FirstName		='contacting' + i;
            conList.add(c);    
        }
        return conList;
    }
}