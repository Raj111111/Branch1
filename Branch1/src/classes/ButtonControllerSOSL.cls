public class ButtonControllerSOSL {

   String searchText;
   List<case> results;
   

   public String getSearchText() {
      return searchText;
   }

   public void setSearchText(String s) {
      searchText = s;
   }

   public List<case> getResults() {
      return results;
   }

   public PageReference doSearch() {
      results = (List<case>)[FIND :searchText RETURNING case(CaseNumber, Origin, Subject,Status)][0];
      return null;
       
   }

}