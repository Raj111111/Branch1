public class sobjectDescribe {
    public map<string, schema.SObjectType> 	mobject {get;set;}   // string = sobjecttype like Account etc
    public list<selectOption> 				selectopp {get;set;} //picklist select
    public list<string>						objlist{get;set;}
    public string 							selectedoption;
    public string							objdescription;
 public sobjectDescribe(){
      mobject 		= schema.getGlobalDescribe(); 	//properties of sobject ; prop are label, isdeletable, isAccessabile etc
      selectopp 	= new list<selectoption>();
      objlist		= new list<string>();			//
      objlist.addAll(mobject.keySet());			   // added keys(string = sobjecttype) in the list
      objlist.sort();
      selectOption p = new selectOption('none', '-none-');
      selectopp.add(p);
     for(string s : objlist){
         selectOption op = new selectOption(s,s);
         selectopp.add(op);
       }
    }
    public void details(){							// if picklist changes from -none- to another object we want to get details of that object
        schema.DescribeSObjectResult myobject  =  mobject.get(selectedoption).getDescribe();
        objdescription = ''+myobject;
    }
}