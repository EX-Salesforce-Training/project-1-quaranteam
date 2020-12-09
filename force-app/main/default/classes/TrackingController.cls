public class TrackingController {

    public List<Mail__c>mailList{get;set;}
    public String trackingID {get;set;}
    
    public TrackingController(){
  		mailList = new List<Mail__c>();
		trackingID = '';
    }
    
    public void ConfirmButtonPressed(){
        mailList = [SELECT Tracking_Number__c FROM Mail__c WHERE id = :trackingID];
    }
    
}