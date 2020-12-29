public with sharing class header {

   public PageReference Logout() {

   Pagereference pg1 = new Pagereference('/secur/logout.jsp?retURL=PostalLogin');

   /* After Logging out, we are redirecting the user to Login page */

   pg1.setRedirect(true);

   return pg1;

   }

   }