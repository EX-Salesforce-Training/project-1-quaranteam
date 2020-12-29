public class IntoTheFuture {
    
    @future
    Public static void AsynchronousMethod() {
        
    }
	
    @future(callout=true)
    public static void AsynchronousCallout() {
        http callout = new http();
        httprequest httpreq = new httprequest();
        httpreq.setEndpoint('https://trailhead.salesforce.com/en/home');
        httpreq.setMethod('GET');
        //GET - gets a resource at the location
        //POST - creates or replaces a resousrce at the endpoint.
        //PUT - create a new resource  or replace an existing resource at the location.
        //DELETE - removes a resource at the location
        //
        //Additional, but less used methods.
        //
        //TRACE - echoes back the string sent to the location.
        //CONNECT - starts two way communication with the target.
        //HEAD   - requests the headers that are returned from a resource if a GET request were made.
        //OTIONS- used to describe the options fornthe target resource.
        httpresponse httpres = callout.send(httpreq);
        
    }
}