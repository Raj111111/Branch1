public with sharing class passing_parameters1 {

    public List<string> listOfparameters{get;set;}

public passing_parameters1(){
 string ValueName = ApexPages.currentpage().getParameters().get('CName');
 string Valuephone= ApexPages.currentpage().getParameters().get('Cphone');
 string ValueUser = ApexPages.currentpage().getParameters().get('CUser');
 string Valuepass = ApexPages.currentpage().getParameters().get('Cpassword');
 listOfparameters = new list<string>();
 listOfparameters.add(ValueName);
 listOfparameters.add(Valuephone);
 listOfparameters.add(ValueUser);
 listOfparameters.add(Valuepass);
}
}