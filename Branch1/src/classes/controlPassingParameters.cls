public class controlPassingParameters {
    public date      dates{get;set;}
    public integer   numbers{get;set;}
    
    public pageReference pages(){
        pageReference pr = page.parameterPassingPage;
        return pr;
    }
}