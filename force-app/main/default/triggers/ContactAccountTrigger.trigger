trigger ContactAccountTrigger on Account ( after update) {
	
    if(trigger.isBefore) {
       ContactAccountHandler.AccountRelated();
        
    }
else
if(trigger.isAfter) {
        ContactAccountHandler.AccountRelated ();
    }
}