trigger ContactAccountTrigger on Account ( after update) {
	
    if(trigger.isBefore) {
       AccountContactHandler.ContactRelated();
        
    }
else
if(trigger.isAfter) {
        AccountContactHandler.ContactRelated ();
    }
}