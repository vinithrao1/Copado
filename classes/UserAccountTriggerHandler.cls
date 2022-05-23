public class UserAccountTriggerHandler { 
   
    @future 
    
    public static void afterinsert(String newuser)    
        
    { 
        List<user> newRecList = (List<user>)JSON.deserialize(newuser,List<user>.class); 
        set<id> userIdSet=new set<id>(); 
        string Manager;
        string name;
        for(user userRec:newRecList) 
            
        { 
            
            userIdSet.add(userRec.id); 
            Manager=(string)userRec.ManagerId;
            
        } 
        for(user u1 : [select id,Name from user where id =:Manager]){
            name = (string)u1.Name;
        }
        list<account> oppList=new list<account>(); 
        list<account> nAccount=[select Manager_Name__c,ownerId from account ];
        List<Report> rpt = new list<Report>();
        for(account Eachaccount:nAccount)
        {
            system.debug('Eachaccount' +Eachaccount);
            Eachaccount.Manager_Name__c=Name;
            system.debug('----->' +  Eachaccount.Manager_Name__c);
            oppList.add(Eachaccount);
            
        }
        
        update oppList;  
        system.debug('----->' +Manager);
        
    }
    
}