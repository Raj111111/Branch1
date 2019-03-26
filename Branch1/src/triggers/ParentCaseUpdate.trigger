trigger ParentCaseUpdate on Case (after insert,after update) {
List<ID> ParentIDS = new List<ID>();
map<id,id> parentid=new map<Id,Id>();
 //  Requirement  // parent case status = closed; when all child case status = close //
    for(case c: trigger.new){
        if(c.parentid!=null) 
            ParentIDS.add(c.parentId);// parent Ids stored        
    } 
   //get all the child cases of the parent case in the below list
   List<case> childCases = [SELECT id, status,parentid From case Where parentid=: parentIds]; //N number of cases 
    system.debug('Number of childs' +childCases);
    for(case css:childCases){
        if(css.status!='Escalated') //Here the logic is - if any of the child case has status other that "Escaleted" it will go thrw loop and assign Id in the MAP
            parentid.put(css.parentid,css.parentid);
        system.debug('Parent ID' +parentid.get(css.parentid));
    }
   //
   List<case> Parentcase1st = [SELECT id, status From case Where id=: parentIds];
    for(case c: Parentcase1st){
        if(parentid.get(c.id)==null) // This map becomes null if and only if the status == Escalated;
            c.status='Escalated';
    }
    update Parentcase1st;
}