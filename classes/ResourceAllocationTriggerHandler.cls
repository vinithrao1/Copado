public class ResourceAllocationTriggerHandler {
    public static void afterInsert(list<Resource_Allocation__c> nResourceAll){
        List<utilization__c> utilizationlist = new List<utilization__c>();
        for(Resource_Allocation__c itr: nResourceAll)
        {
            
            integer noofmonths = itr.end_date__c.monthsBetween(itr.start_date__c);
            integer startmonth=itr.Start_Date__c.month();
            integer endmonth =itr.End_Date__c.month();
            Integer noOfDays = itr.Start_Date__c.daysBetween(itr.End_Date__c);
            System.debug('no of months--->'+noofmonths);
            System.debug('start date---months=='+itr.Start_Date__c.month());
            System.debug('End date---months=='+itr.end_date__c.month());
            system.debug('days between in a month=='+noOfDays);
            integer totalWeeks = noOfDays/7;
            system.debug('weeks =='+noOfDays/7);
            integer WeeksPerMonth =totalWeeks/4;
            
            system.debug('weeks per month=='+ WeeksPerMonth);
            Integer remainder = math.mod(WeeksPerMonth , 4);
            system.debug('remainder=='+remainder);
            for(integer i=startmonth;i<=endmonth;i++)
            {
                
                
                
                system.debug('String.valueOf(i)=='+String.valueOf(i));
                utilization__c obj = new utilization__c();
                
                obj.month__c = String.valueOf(i);
                
                obj.Monthly_Hours__c=itr.Avg__c * 4;
                
                
                obj.Resource__c = itr.Resource__c;
                obj.Name = obj.Month__c;
                
                utilizationlist.add(obj); 
                
            } 
            
        }
        upsert utilizationlist;
    }

    
    
    
}