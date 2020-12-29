global class BatchApex implements Database.Batchable<sobject> {
    
    global Database.QueryLocator start(Database.batchableContext BC) {
        String query = 'SELECT id, name FROM Account';
            return Database.getQueryLocator(query);
        
    }
    global void execute(Database.BatchableContext BC, List<Account> acclist) {
        for(Account a:accList) {
            system.debug(a.name);
        }
              
    }
    
    global void finish (Database.BatchableContext BC) {
        
    }

}