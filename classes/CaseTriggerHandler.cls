public class CaseTriggerHandler {
    public static void afterUpdate(list<case> ncase ,map<id,case> oldcase){
        list<task> Nt=new list<task>();
        for(case EC:ncase){
            if(EC.Status!=oldcase.get(EC.id).status){
                Task newTask = new task();
                newTask.subject = 'Automated Task';
                
                newTask.whatId = EC.Id;
                
                newTask.ownerId = EC.OwnerId;
                
                newTask.status = 'In progress';
                
                newTask.Priority = 'Normal';
                Nt.add(newTask);
            }
            
        }
        insert Nt;
    }
}