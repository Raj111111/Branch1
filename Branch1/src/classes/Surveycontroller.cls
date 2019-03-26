public with sharing class Surveycontroller{

 public integer age{get;set;}    //age- field//
 public string gender{get;set;}    //gender - picklist//
 public date cancellation{get;set;} //date field
 public string membershiptype{get;set;} //picklist//
 public string overall{get;set;} //picklist//
 public string comment{get;set;} // box//
//For picklist dropbox take a list<selectOption>
 public list<selectOption> overalls{get;set;}
 public list<selectOption> types{get;set;}
 public list<selectOption> genders{get;set;}
 //Cid 
 public string cid{get;set;}
 

 
 public Surveycontroller(){
     overalls = new list<selectOption>();
       overalls.add(new selectOption('--select--','--select--'));
       overalls.add(new selectOption('1-very Dissapointed','1-very Dissapointed'));
       overalls.add(new selectOption('2-Dissatisfied','2-Dissatisfied'));
       overalls.add(new selectoption('3-neutral','3-neutral'));
       overalls.add(new selectOption('4-satisfied','4-satisfied'));
       overalls.add(new selectoption('5-very satisfied','5-very satisfied'));
       
       types = new list<selectOption>();
      types.add(new selectOption('--select--','--select--'));
      types.add(new selectOption('Weekly','Weekly'));
      types.add(new selectOption('Monthly','Monthly'));
      types.add(new selectOption('Qurterly','Qurterly'));
      types.add(new selectOption('yearly','yearly'));
       
    genders = new list<selectOption>();
       genders.add(new selectOption('--select--','--select--'));
       genders.add(new selectOption('Male','Male'));
       genders.add(new selectOption('Female','Female'));    
    
       cid = ApexPages.currentpage().getParameters().get('id');   
 
 }
 
 
}