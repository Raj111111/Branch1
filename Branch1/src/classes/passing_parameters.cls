public class passing_parameters {
    public string CName{get;set;}
    public string Cphone{get;set;}
    public string CUser{get;set;}
    public string Cpassword{get;set;}

    public pageReference saving(){
    pagereference pages = page.nextPage;
        pages.getParameters().put('CName', CName); //if it is a number then string.valueOf(CName)
        pages.getParameters().put('Cphone', Cphone);
        pages.getParameters().put('CUser', CUser);
        pages.getParameters().put('Cpassword', Cpassword);
        pages.setRedirect(true);
        return pages;
    }
}