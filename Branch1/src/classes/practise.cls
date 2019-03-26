public class practise {
 list<contact> contList;
 set<id> contId = new set<id>();
    Map<id,contact> contMap;
    public void memethod(){
        contList = [SELECT id, lastName, phone FROM contact ];
        for(contact c : contList){
            //contId = new set<id>();
            contMap = new map<id,contact>();
            contMap.put(c.id, c);
            contId.add(c.id);
            system.debug('show set ids = ' +contId);
           // system.debug('show set ids = ' +contList);
            //system.debug('show set ids = ' +contMap);
        }
    }
	
    public void mmetod2(){
	contList = [SELECT id,lastname FROM contact];
        for(contact c :contList){
            contMap.put(c.id,c);
            system.debug('yess = '+contMap);
        }
        
    }

}