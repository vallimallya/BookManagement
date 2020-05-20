trigger BookOrderTrigger on Book_Order__c (before insert) {

    if(Trigger.isInsert)
    {
        if(Trigger.isBefore)
        {
            PriceCalculation.calculatePrice(Trigger.New);
        }
    }

}