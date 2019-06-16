trigger autoname on Lead (before insert, before update) {
    string LN;
    string C;
    if(Trigger.isinsert || Trigger.isupdate){
    for(Lead l : Trigger.new){
        LN = l.LastName;
        C = l.Company;
        l.CurrentGenerators__c = LN+ '-' +C;
    }
    }
}