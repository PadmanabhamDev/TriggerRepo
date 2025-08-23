trigger AccountTrigger on Account (after insert,after update,before insert, before update) {
   	System.debug('Line 2 ********'+Trigger.old);
    System.debug('Line 3 ********'+Trigger.new);
   	System.debug('Line 4 ********'+Trigger.oldMap);
    System.debug('Line 4 ********'+Trigger.newMap);
}