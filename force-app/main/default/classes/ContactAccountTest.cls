@isTest
public class ContactAccountTest {
    
    public static testmethod void test() {
  account a = new account(name='test',fax='12345');
  insert a;
  contact[] c = new contact[] {
    new contact(lastname='test',phone='44444',accountid=a.id,mailingstreet='124 main st.',
                mailingcity='other',mailingstate='st',mailingpostalcode='54321',mailingcountry='mx'),
    new contact(lastname='atest',accountid=a.id,fax='12345') };
  insert c;
  a.fax = '23456';
  a.billingStreet = '123 main st.';
  a.Billingcity = 'city';
  a.Billingstate = 'state';
  a.Billingpostalcode = '12345';
  a.Billingcountry = 'usa';
  a.phone = '23456';
  update a;
  c = [select id,accountid,lastname,phone,fax,mailingstreet,mailingcity,mailingpostalcode,mailingstate,mailingcountry from contact where id in :c order by lastname asc];
  system.assertequals(a.fax,c[0].fax);
  system.assertequals(a.phone,c[0].phone);
  system.assertequals(a.billingstreet,c[0].mailingstreet);
  system.assertequals(a.billingcity,c[0].mailingcity);
  system.assertequals(a.billingstate,c[0].mailingstate);
  system.assertequals(a.billingpostalcode,c[0].mailingpostalcode);
  system.assertequals(a.billingcountry,c[0].mailingcountry);
  system.assert(c[1].fax != a.fax);  // They didn't match before the update.
  system.assert(c[1].phone != a.phone);
  system.assert(c[1].mailingstreet != a.billingstreet);
  system.assert(c[1].mailingcity != a.billingcity);
  system.assert(c[1].mailingpostalcode != a.billingpostalcode);
  system.assert(c[1].mailingstate != a.billingcountry);
  system.assert(c[1].mailingcountry != a.billingcountry);
}

}