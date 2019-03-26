trigger Mysecondtrigger on Contact (before insert,before update) {

    for(contact s: trigger.new ){
        system.debug(s + 'hhhhh');
    }//end of for

}