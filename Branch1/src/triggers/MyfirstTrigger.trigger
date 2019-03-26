trigger MyfirstTrigger on Contact (before insert,before update,before delete,after undelete) {


 
     for(contact c: trigger.new){
     
      if(trigger.isupdate==true){
        if(trigger.newmap.get(c.id).lastname != trigger.oldmap.get(c.id).lastname){        
          system.debug(c.lastname+'MMMMMMMMMMMMM');
        }
     }// condition check
     
     }





}