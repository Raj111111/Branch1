trigger LibraryfieldInsertTrigger on library__c (before insert) {
    List<library__c> libs = Trigger.new;
    // call the method applydiscount which is in the customerhelper class.
   libs = LibraryHelper.LibraryfieldInsert();

}