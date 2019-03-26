public class PDFgenerator {

    public Opportunity opp{get;set;}
    Public static string ParentId= ApexPages.currentPage().getParameters().get('id');
    public blob file { get; set; }
    public ApexPages.StandardController controller;
    Public PDFgenerator(ApexPages.StandardController stdController) {

        controller = stdController;
             opp = [SELECT Id, RecordTypeId,Amount, Description, IsPrivate, Probability, stagename,name,expectedRevenue, IsClosed FROM Opportunity WHERE ID =: ParentId];   
                system.debug('show==>' +opp);
    }
    

    public static void upload() {
       // PageReference pdfPage = new PageReference('/apex/pdfgeneratorvfpage?id='+ParentId); //apex/pdfgeneratorvfpage?id=006f100000dFt2nAAC
       
        PageReference pdfPage = Page.PDFgeneratorVFpage2;
        pdfPage.getParameters().put('id', ParentId); 
        
        
        ContentVersion v = new ContentVersion();
        v.ContentLocation = 'S';
         // v.versionData = pdfPage.getContentAsPDF();
        v.versionData = pdfPage.getContentAsPDF();
        //v.versionData = Blob.valueOf(EncodingUtil.base64encode(pdfPage.getContentAsPDF()));
        system.debug('saves file ==>' +v.versionData); 
        v.title = 'AnnualReviewPDF';
        v.pathOnClient ='file.pdf';
        insert v;
        
             
        Id conDoc = [SELECT ContentDocumentId FROM ContentVersion WHERE Id =: v.Id].ContentDocumentId;
        
        
        ContentDocumentLink cDe = new ContentDocumentLink();
        cDe.ContentDocumentId = conDoc;
        cDe.LinkedEntityId = ParentId; 
        system.debug('LinkedEntityId ==>' +cDe.LinkedEntityId);    
        cDe.ShareType = 'V'; // Viewer permission. The user can explicitly view but not edit the shared file.
        cDe.Visibility = 'InternalUsers';
        insert cDe;
        system.debug('ContentDocumentLink file ==>' +v);

     }
}