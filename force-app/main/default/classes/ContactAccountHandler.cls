public class ContactAccountHandler {
    
    public static Void AccountRelated() {
        Set<String> PhoneSet = new Set<String>();
        list <account> Acclist = [SELECT  id, Name, BillingStreet, BillingCity, BillingState, BillingPostalCode, BillingCountry, Phone FROM Account];
        list <contact> conlist = [SELECT  id,FirstName, LastName, MailingStreet, MailingCity, MailingState, MailingPostalCode, MailingCountry, HomePhone FROM Contact];
        // We query only for the accounts that have a matching phone number, this way we are being more efficient with our code.
       
        for(Contact c: conlist) {
            // We put all of the phone numbers from the context in which we are operating
            // inside a set, no need to make an additional query for contacts.
            // 
            // sets only hold unique values so we know we will not have duplicates.
            PhoneSet.add(c.Phone);
        }
        // With our unique set of phone numbers we query for accounts.
        // The WHERE ____ IN :ListOrSet says to return only records
        // where the corresponding value exists in the set/list.
        List<Account> AccList2 = [SELECT id, Name FROM Account WHERE phone IN :PhoneSet];
        // Now we have a list of 0 or more accounts that match based on the matching rules you defined, 
        // in this case the phone number.
        For(Account a:AccList2){
            for(Contact c:conlist) {
                if(c.phone == a.phone){
                    c.AccountID = a.id;}
                Insert AccList2;
					
                    
                
  /*        List<Account> RelatedRecord = new List<Account>();
if(!=NULL && .size()>0)
{
for(Account a:[SELECT id,,RecordType.Name FROM Case WHERE id IN:legalId])
{
c.=true;
caseRecord.add(c);
}
update caseRecord;*/
                    }   
            } 
        }
           
    }
    // We loop through our trigger context records we called newContacts.
        //for(Contact c: newContacts) {
            // Check to make sure the Account ID isn't null.
           // if(ID != null) 
                // Add the AccountID to the set.
               // newAccountContact.add(c.ID);}
            
        
        //list <contact> Related = new list
            
       //     for( Account acc : Acclist ) {
    //for( Contact con : acc.Contacts ) {
    	//System.debug( con.LastName );
    


        
        // Declare our set collection.
       // Set<String> newAccountContact = new Set<String>();
        // We loop through our trigger context records we called newContacts.
        //for(Contact c: newContacts) {
            // Check to make sure the email isn't null.
           // if(c.Email != null) {
                // Add the email to the set.
                //newEmailSet.add(c.email);
            
     /*   // We loop through our trigger context records we called newContacts.
        for(Account a: newAccounts) {
            // Check to make sure the Account ID isn't null.
            if(a.AccountID != null) {
                // Add the AccountID to the set.
                newAccountContact.add(c.AccountID);
            
            // Step 2 - We find duplicate contacts in the Account database based on the AccountContact set. 
		// We store these in a map using the ContactID as the key, and the name as the 
		// value.       
		
		// Declare our map collection.
        Map<String, Account> existingContactMap = new Map<String, Account>();
        // Find the duplicates using a SOQL Loop.
        for(account existingContact: [SELECT id, name FROM Account WHERE ID in :newAccountContact]) {
            // put the duplicates in the map.
            existingContactMap.put(existingContact.ID, existingContact);
        }
                // Step 3 - Compare and addError if it is a duplicate.
		
        // We cycle through newContacts, our trigger context.
        for(contact newContact: newContacts) {
            // We attempt to store a contact using the all the info of the new contact.
            contact duplicateContact = existingContactMap.get(newAccountContact.addAll(elements));
            // If we successfully found a value in our map.
            if(duplicateContact != null) {
                // Add an error to it as a duplicate to prevent its insertion.
                newContact.addError('Email already exists in system. ' + duplicateContact.Name);
            }
        */
        
        //return newcontacts;