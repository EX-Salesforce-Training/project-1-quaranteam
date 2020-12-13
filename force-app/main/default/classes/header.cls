public with sharing class header {

   Public pagereference back() {
Pagereference pg = new Pagereference ('/apex/NeedSupport');
pg.setRedirect (true);
return pg;
}
    public PageReference Logout() {

   Pagereference pg1 = new Pagereference('/secur/logout.jsp?retURL=PostalLogin');

   /* After Logging out, we are redirecting the user to Login page */

   pg1.setRedirect(true);

   return pg1;

   }
Public pagereference Tracking() {
        Pagereference pg = new Pagereference('/apex/Tracking');
        pg.setRedirect (true);
        return pg;
}
Public pagereference Profile() {
        Pagereference pg1 = new Pagereference('/apex/MyProfilePage');
        pg1.setRedirect (true);
        return pg1;
}
Public pagereference ListPackages() {
        Pagereference pg2 = new Pagereference('/apex/ListPackages');
        pg2.setRedirect (true);
        return pg2;
        }
Public pagereference Support() {
        Pagereference pg3 = new Pagereference('/apex/CreateCase');
        pg3.setRedirect (true);
        return pg3;
    }
    
   }