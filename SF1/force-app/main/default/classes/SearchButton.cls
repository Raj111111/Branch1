public class SearchButton {
    public string keyword{get;set;}
 public Account[] accts{get;set;}
 /*   
    public List<account> getAccts(){
        return accts;
    }
    
    public string getKeyword(){
        return keyword;
    }
    
    public void setKeyword(string s){
        keyword = s;
    }
   */ 
    public pageReference go(){
        accts = (Account[])[FIND: keyword IN ALL FIELDS RETURNING Account (Id, Name,industry)][0];
        return null;
    }
}