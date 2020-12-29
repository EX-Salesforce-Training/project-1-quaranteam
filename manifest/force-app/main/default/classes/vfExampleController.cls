public with sharing class vfExampleController {

    public List<Account>  bob {get;set;}

    public vfExampleController() {
        bob = [SELECT name, billingState, BillingStreet, BillingCity, BillingPostalCode FROM Account];
    }
    public void bobSave() {
        system.debug('Called Method');
        upsert bob;
    }
}