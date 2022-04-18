@isTest
public with sharing class trialcall3test {

        @isTest static void testDefaultDescription(){
            Account acc = new Account(Name = 'My Test Account');
            insert acc;
            acc = trialcall3.setDefaultDescription(acc);
            System.assertEquals('Default description', acc.Description, 'When description is null, it is updated to Default description');
    
            acc.Description = 'New Description Manual';
            
            acc = trialcall3.setDefaultDescription(acc);
            System.assertNotEquals('Default description', acc.Description, 'When description is NOT null, it is NOT updated to Default description');
        }
    
        @isTest static void testDefaultSite(){
            Account acc = new Account(Name = 'My Test Account');
            insert acc;
            acc = trialcall3.setDefaultSite(acc);
            System.assertEquals('Single location', acc.Site, 'Default Site is Single location');
        }
    
        @isTest static void testDefaultShippingAddress(){
            Account acc = new Account(Name = 'My Test Account');
            insert acc;
            acc = trialcall3.setDefaultShippingAddress(acc);
        System.assertEquals('Basauri, 6', acc.ShippingStreet, 'Default ShippingStreet is Basauri, 6');
        System.assertEquals('Madrid', acc.ShippingState, 'Default Shippingtate is Madrid');
        System.assertEquals('28023', acc.ShippingPostalCode, 'Default ShippingPostalCode is 28023');
        }
    
        @isTest static void testDefaultPhone(){
            Account acc = new Account(Name = 'My Test Account');
            insert acc;
            acc = trialcall3.setDefaultPhone(acc);
        System.assertEquals('688456789', acc.Phone, 'Default phone number is 688456789');
        }
    
        @isTest static void testDefaultURL(){
            Account acc = new Account(Name = 'My Test Account');
            insert acc;
            acc = trialcall3.setDefaultURL(acc);
        System.assertEquals('www.copa.do', acc.Website, 'Default website is www.copa.do');
    }

}