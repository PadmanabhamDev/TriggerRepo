trigger OpportunityTrigger on Opportunity (before insert,before update,after insert, after update, after delete,after undelete,before delete) {
	
    if(Trigger.isAfter && (Trigger.isInsert || Trigger.isUpdate || Trigger.isDelete)){
        OpportunityTriggerHelper.OpportunityCount(Trigger.newMap);
    }
}