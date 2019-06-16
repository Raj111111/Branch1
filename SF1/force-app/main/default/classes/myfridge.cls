public class myfridge {
   string nam;
   integer numb;
   public static final Integer stockThreshold = 5;
    public myfridge(){
        nam  = 'RAJ';
        numb =  45; 
    }
    public myfridge(string na, integer nu){
        nam  = na;
        numb = nu; 
    }
    public void methodss(integer n){
        numb = numb-n;
    }
    public void setNumb(integer numb){
       this.numb = numb;   
    }
    public integer getNumb(){
        return numb;
    }
}