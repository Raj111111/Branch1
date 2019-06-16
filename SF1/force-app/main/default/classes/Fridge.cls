public class Fridge{
    public string modelnumber ;
     public integer numberInStock ;
    	//public integer justSold;
	
    public  integer updateStock( integer justSold){
        numberInStock = numberInStock - justSold;
        return null;
        	
    }
    
    /*public Fridge(string Mn, integer Ni, integer Js){
        modelnumber = 'Mn';
        numberInstock = Ni;
        justSold = Js;
    }*/
  
}