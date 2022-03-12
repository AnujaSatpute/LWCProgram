@isTest
public class AccountTriggerTest {

@isTest static void accountTrigger_afterInsert()
     {
        Account account = new Account(Name='Test Account1' , Type ='Prospect') ;
         Test.startTest();
         insert account;
         Test.stopTest();
         
      /*   Account insertedAccount =[Select Id, Name From Account LIMIT 1];
        List<Contact> insertedContacts = [Select Id, Account.Name From Contact];
        System.assertEquals(insertedContacts.size(),‘Only 1 Contact should present’);
        System.assertEquals(insertedAccount.Name, insertedContacts[0].Account.Name, ‘Account Name does not match’);*/
         
     }
}