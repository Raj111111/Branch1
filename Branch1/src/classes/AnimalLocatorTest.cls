@IsTest
public class AnimalLocatorTest {
    @Istest static void AnimalLocatorMock1(){
        Test.setMock(HttpCallOutMock.class, new AnimalLocatorMock());
        string result=AnimalLocator.getAnimalNameById(3);
		string expectedResult = 'chicken';
        System.assertEquals(result, expectedResult);
    }
}