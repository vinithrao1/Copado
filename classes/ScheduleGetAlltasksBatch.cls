/**************************************************************************************************
*** Class Name : GetAlltasksBatch
*** Class Description : Write a batch job on Task object
*** Author :Vinith Rao
*** Class Created Date : 18-03-2022
**************************************************************************************************/

global class ScheduleGetAlltasksBatch IMPLEMENTS schedulable
{
    global static void execute(Schedulablecontext sc)
    {
        GetAlltasksBatch EBC=new GetAlltasksBatch();
        database.executeBatch(EBC);
    }
    
    
    
}