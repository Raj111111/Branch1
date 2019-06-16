@IsTest
public class ParkLocatorTest {
    @IsTest static void Testclass(){
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        string country = 'India';
        
        System.assertEquals(new List<string>{'Lala', 'Lombi', 'NTR'}, ParkLocator.country(country));
    }
}