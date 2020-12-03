public class AccountContactHandler {
    
    
    public static Void ContactRelated() {
        Set<String> PhoneSet = new Set<String>();
        list <account> Acclist1 = [SELECT  id, Name, BillingStreet, BillingCity, BillingState, BillingPostalCode, BillingCountry, Phone FROM Account];
        list <contact> conlist1 = [SELECT  id, FirstName, LastName, MailingStreet, MailingCity, MailingState, MailingPostalCode, MailingCountry, HomePhone FROM Contact];
        // We query only for the accounts that have a matching phone number, this way we are being more efficient with our code.
       
        for(Contact c: conlist1) {
            // We put all of the phone numbers from the context in which we are operating
            // inside a set, no need to make an additional query for contacts.
            // 
            // sets only hold unique values so we know we will not have duplicates.
            PhoneSet.add(c.Phone);
        }
        // With our unique set of phone numbers we query for accounts.
        // The WHERE ____ IN :ListOrSet says to return only records
        // where the corresponding value exists in the set/list.
        List<Account> AccList22 = [SELECT id, Name FROM Account WHERE phone IN :PhoneSet];
        // Now we have a list of 0 or more accounts that match based on the matching rules you defined, 
        // in this case the phone number.
        For(Account a:AccList22){
            for(Contact c:conlist1) {
                if(c.phone == a.phone){
                    c.AccountID = a.id;}
                Insert AccList22;

}
        }
    }
}