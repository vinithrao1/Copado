public class AccountUserTriggerHandler {
    public static void afterInsert(list<user> nuser ,map<id,user> oldUser)
    {
        set<id> nSet =new set<id>();
        string manager;
        for(user UserRecord:nuser)
        {
            user oldRecord =oldUser.get(UserRecord.Id);
            if(UserRecord.manager.name!=oldRecord.Manager.name)
            {
                nSet.add(UserRecord.Id);
                manager=UserRecord.ManagerId;
            }
        }
        list<account> nAccount=new list<account>();
        list<account> oAccount=[Select Manager_Name__c,ownerId from account where ownerId IN:nSet];
        for(account eachAccount:oAccount )
        {
            eachAccount.Manager_Name__c=manager;
            System.debug('------>' +eachAccount.Manager_Name__c);
            nAccount.add(eachAccount);
        }
        update nAccount;
        System.debug('------>' +manager);
    }

}