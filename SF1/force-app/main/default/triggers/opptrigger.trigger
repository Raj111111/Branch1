trigger opptrigger on Opportunity (before insert, before update, After update) {

Set<String> allEmails = new Set<String>();
  for (opportunity opp : Trigger.new) {
    if (opp.Account.Name != null) {
      allEmails.add(opp.Account.Name);
        system.debug('allE' +allEmails);
        system.debug('allE' +allEmails.size());
    }
  }
}