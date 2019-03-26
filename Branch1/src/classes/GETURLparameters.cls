public class GETURLparameters {
    
    public contact query{get;set;}   
    public id myId = '003j000000sChTP';
    public GETURLparameters(){
       string myPage = apexpages.currentpage().getparameters().get('myId');
		query = [SELECT Id, Firstname, LastName, Email FROM contact Where Id = :mypage];
    }
/*
    public string FirstName{get;set;}
    public string LastName{get;set;}
    public string Email{get;set;}
    public Id positionId = '003j000000sChTP';
    Map<id,id> UrlParameterMap;
    
    public GETURLparameters(){
    contact a = new contact();
        
       string FirstName = apexpages.currentpage().getparameters().get('firstName');
		string LastName = apexpages.currentpage().getparameters().get('lastName');
       string  Email = apexpages.currentpage().getparameters().get('Email');
        UrlParameterMap = apexpages.currentpage().getParameters().put('id', 'positionId');
    }*/
}