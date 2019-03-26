public virtual class Apartment {
public static integer age =0;
    public final integer numb;
    public Apartment(){
        age++;
        numb = 10;
    }
    public static integer getAge(){
        return age;
    }
    public integer getNumb(){
        integer s = numb++;
        return s;
    }
}