public class pdfController {

    Public Opportunity opp{get;set;}
    Public static string ParentId= ApexPages.currentPage().getParameters().get('id');
    public blob file { get; set; }
    public ApexPages.StandardController controller;
    Public pdfController(ApexPages.StandardController stdController) {

        controller = stdController;
             opp = [SELECT Id, RecordTypeId,Amount, Description, IsPrivate, Probability, stagename,name,expectedRevenue, IsClosed FROM Opportunity WHERE ID =: ParentId];   
                system.debug('show==>' +opp);
    }

    public static void PDFMethod(){
        //Id ParentId= ApexPages.currentPage().getParameters().get('id');
        System.debug('ID=>' +ParentId);
       // PageReference pdfPage = new PageReference('/apex/pdfgeneratorvfpage?id='+ParentId);
        PageReference pdfPage = Page.pdfgeneratorvfpage2;
        pdfPage.getParameters().put('id', ParentId); 
        system.debug('page pdf==>' +pdfPage );
        ContentVersion v = new ContentVersion();
        v.ContentLocation = 'S';
        v.versionData = pdfPage.getContent();
        //v.versionData = Blob.valueOf(EncodingUtil.base64encode(pdfPage.getContentAsPDF()));
        system.debug('saves file ==>' +v.versionData); 
        v.title = 'AnnualReviewPDF';
        v.pathOnClient ='file.pdf';
		//v.FirstPublishLocationId = 'a0C6C000000iu2kUAA' ;
        insert v;
    
        Id conDoc = [SELECT ContentDocumentId FROM ContentVersion WHERE Id =: v.Id].ContentDocumentId;
        system.debug('Cont ==>' +conDoc);
        
        ContentDocumentLink cDe = new ContentDocumentLink();
        cDe.ContentDocumentId = conDoc;
        cDe.LinkedEntityId = ParentId; 
        system.debug('LinkedEntityId ==>' +cDe.LinkedEntityId);    
        cDe.ShareType = 'V'; // Viewer permission. The user can explicitly view but not edit the shared file.
        cDe.Visibility = 'InternalUsers';
        insert cDe;
        system.debug('ContentDocumentLink file ==>' +cDe);
        
    }
       
}