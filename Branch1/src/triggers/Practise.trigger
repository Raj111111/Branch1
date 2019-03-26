Trigger Practise on contact (before insert, After update,  before update, After Insert, before delete, after undelete) {

   Set<ID> ids = Trigger.newMap.keySet();
   system.debug('see = >' +ids);
  // List<User> c = [SELECT Id FROM user WHERE contact in :ids];
}