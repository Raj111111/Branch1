trigger practiseTrigger on Contact ( before Update) {
    //** old value of a field changed then some other field value should be change or over written **//
    
    set<string> zipcodeset = new set<string>();
    for(contact con : Trigger.new){
        system.debug('show trigger.new' +con);
        contact contOld = Trigger.oldmap.get(con.Id); // Taking old values of all fields or present values from contact records
        system.debug('contact old map' +contOld);
        contact idss = Trigger.newMap.get(con.Id);
        string Lname = idss.LastName;
        system.debug('newMap = ' +idss);
        //***look for old value and new changed value***//
        Boolean oldcheck  = contOld.LeadSource.Equals('Web'); //old value of picklist is Web?
        Boolean changedOr = con.LeadSource.Equals('Web');// new Value of picklist is Web?
        //If we want leadSource of privious value changed to some other value then we can use string
        ///string oldValue = Trigger.oldMap.get(con.Id).LeadSource;////
        // Check if leadsource is changed to Web or Its already a web 
        // fire when changed to web
        if(Trigger.Isinsert){
        if(!oldcheck && changedOr){ //(if oldValue != NewValue)
            con.Description = 'yes old value is not equals New Value - leadsource';
        }
         
        }   if(Trigger.Isupdate){
                if(oldcheck != changedOr){
                    con.Description = 'They are not same now and before-lead source';
                }
                    }
    }
    if(Trigger.Isinsert){ //if a new contact is inserting then add zipcode to set
        for(contact c: trigger.new){
            if(c.MailingPostalCode != null)
                zipcodeset.add(c.MailingPostalCode);
        }
    }else
        if(Trigger.IsUpdate){
            set<id> updatedContactIDS = new set<id>();
            for(contact c: Trigger.new){
                string oldZip = Trigger.oldMap.get(c.Id).MailingPostalCode;
                string zipcode = c.MailingPostalCode;
                if(oldZip != zipcode){
                    zipcodeset.add(zipcode); //changed or updated zipcodes are added to set
                    updatedContactIDS.add(c.Id); //all updated contact ids, this updated records set can be futur used in soql filters
                }
            }
        }
    
    
    
    
    
    
    
    
    
    
    
    
}