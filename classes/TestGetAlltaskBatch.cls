@isTest
public class TestGetAlltaskBatch {
    @isTest
    public static void batchTestMethod()
    {
        account Naccont =new account();
        Naccont.name='Test1';
        insert Naccont;
        task nTask=new task();
        nTask.subject='Test12';
        nTask.WhatId=Naccont.Id;
        nTask.Priority='normal';
        nTask.Status='Completed';
        nTask.ActivityDate=date.today()+7;
        insert nTask;
        
        test.startTest();
        GetAlltasksBatch batch =new GetAlltasksBatch();
        database.executeBatch(batch);
        test.stopTest();
        
    }

}