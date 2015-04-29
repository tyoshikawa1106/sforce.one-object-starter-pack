@isTest
private class S1_SforceOneControllerTest {

    private static User testAdminUser  = new User(Id = UserInfo.getUserId());
    
    static testMethod void S1_SforceOneControllerTest() {
        
        System.runAs(testAdminUser)  {
            Test.startTest();
            
            S1_SforceOneController cls = new S1_SforceOneController();
            
            Test.stopTest();
        }
    }
}