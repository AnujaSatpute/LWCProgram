trigger AccountTriggerExample2 on Account (after update) {
    
    if(Trigger.isAfter || Trigger.isUpdate)
    {
        List<Id> aId = new List<Id>();
        For(Account acc : trigger.new)
        {
            if(acc.OwnerId != trigger.oldMap.get(acc.Id).OwnerId)
            {
                aId.add(acc.Id);
            }
        }
        if(aId.size() != 0)
        {
            List<Contact> con = [Select Id, OwnerId , accountId From Contact Where accountId in : aId];
             for(Contact cons :con)
             {
                 cons.OwnerId = trigger.newMap.get(cons.accountId).OwnerId;
             }
            update con;
        }
        
    }

}