@isTest
public class UserAccountTriggerTestClass {
   @isTest
    public static void handlerTestClass()
    {
     test.startTest();
        string name;
        user newUser = new user();
        newUser.alias='Test1234';
        newUser.Email='vinithbittu8063@gmail.com';
        newUser.LanguageLocaleKey='en_US';
        newUser.Country='India';
        newuser.LocaleSidKey='en_IN';
        newuser.FirstName='vinith';
        newuser.LastName='rao';
        newuser.EmailEncodingKey='UTF-8';
        newuser.TimeZoneSidKey='Asia/Kolkata';
        newuser.Username='viiniithbiittu8063@gmail.com';
        newuser.ProfileId='00e5j000002EkSsAAK';
        newuser.ManagerId='0055j000006nvO8AAI';
        insert newuser;
        
        newuser.ManagerId='0055j000003981bAAA';
        update newuser;
        
        account abc=new account();
        abc.id='0015j00000dW1NDAA0';
        abc.Manager_Name__c=newuser.ManagerId;
        update abc;
       
        test.stopTest();
          
        
    }

}