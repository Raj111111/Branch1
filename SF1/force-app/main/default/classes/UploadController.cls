public with sharing class UploadController {

    public UploadController(ApexPages.StandardController controller) {
    
        //AcctId = controller.getRecord().id; 
        PositionId=apexpages.currentpage().getparameters().get('id');
    }

    public id PositionId { get; set; }
    public string fileName{ get;set;  }  
    public Blob fileBody   { get;set;  } 
      
    Public pagereference Upload(){
     if(fileName != null && fileBody != null){   
    Attachment Att = new Attachment();
               Att.OwnerId = UserInfo.getUserId();
               Att.ParentId = PositionId; // the record the file is attached to
               Att.IsPrivate = true;
               Att.Body = fileBody;
               Att.Name = fileName;
               
           insert Att;  
          system.debug('Saves ==>' +Att);   
       }
    return null;
    
    }
    
}