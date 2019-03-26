public class cuscont {

 public integer number1{set;get;}
 public integer number2{set;get;}
 public integer resu{set;get;}
 public string status{get;set;}
 
 public void save(){ 
  resu = number1+number2;
  status = 'showing you result';
  

}
}