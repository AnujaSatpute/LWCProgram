trigger AccountTrigger on Account (after insert) {
  
     if(Trigger.IsAfter && Trigger.isInsert)
     {
         List<Contact> cc = new List<Contact>();
         for(Account acc : Trigger.new)
         {
             Contact con = new Contact(LastName = acc.Name +'con' , AccountId=acc.Id );
              cc.add(con);
                
         }
         insert cc;
         System.debug('Value is inserted ' + cc);
     }
}