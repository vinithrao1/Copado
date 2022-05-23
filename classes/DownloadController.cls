public with sharing class DownloadController {
    @AuraEnabled
    public static Attachment ReportDownloadController() {
        String htmlText = '<html>...</html>';
        Blob txtblob = Blob.valueOf(htmlText); //converting string to a blob
        Attachment attach = new Attachment();
        attach.Name = 'text.html';
        attach.Body = txtblob;
        attach.ContentType = 'text/html';
        return attach;    
       //  return EncodingUtil.base64Encode(Blob.valueOf(htmlText));
    }
    /*
     * @AuraEnabled public static String getFile() {
  String htmlText = '<html>...</html>';
  return EncodingUtil.base64Encode(Blob.valueOf(htmlText));

*/
}