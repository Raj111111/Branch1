public class ParkLocator {
    public static List<string> country(string country){
        ParkService.ParksImplPort PP = new ParkService.ParksImplPort();
        List<string> countryList     = pp.byCountry(country);
        return countryList;
    }
}