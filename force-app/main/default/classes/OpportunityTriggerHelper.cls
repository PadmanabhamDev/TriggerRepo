public class OpportunityTriggerHelper {
    public static void OpportunityCount(Map<Id,Opportunity> newMap){
        Set<Id> accIds = new Set<Id>();
        for(Opportunity op : newMap.values()){
            accIds.add(op.AccountId);
        }
        List<Account> accData = [Select Id,Opportunity_Count__c,( Select Id,AccountId From Opportunities ) From Account Where Id IN : accIds];
        for(Account acc : accData){
            acc.Opportunity_Count__c = acc.Opportunities.size();
        }
        System.debug('line 11***********'+accData);
        if(accData != null && !accData.IsEmpty()){
            update accData;
        }
    }
}