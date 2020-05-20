public class PriceCalculation {

    public static void calculatePrice(List<Book_Order__c> orders) {
        for(Book_Order__c order : orders)
        {
            order.Total_Price__c = 300;
            order.Discount__c = 15;
        }
    }
}