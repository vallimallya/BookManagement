@isTest
public class PriceCalculationTest {

    @isTest
    public static void calculatePriceTest()
    {
        Book__c book = new Book__c();
        book.Name = '2 States';
        book.Quantity__c = 15;
        book.Price__c = 200;
        insert book;

        Book_Order__c bookOrder = new Book_Order__c();
        List<Book__c> Books = [select id from Book__c where Name='2 States'];
        for(Book__c insertedBook : Books){
            bookOrder.Book__c = insertedBook.id;
        }
        
        insert bookOrder;

        List<Book_Order__c> insertedOrders = [select Total_Price__c from Book_Order__c];
        for(Book_Order__c order : insertedOrders){
            System.assertEquals(300,order.Total_Price__c);
        }
    }
}