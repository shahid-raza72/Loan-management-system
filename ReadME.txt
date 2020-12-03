This app is built with nodeJs express framework and sql database. In the forntend i have used html css and bootstrap.
To Run this web app install all npm packages.
RUN NPM INSTALL
IMPORT THE DATABASES "myacc.sql" into your database
RUN node server.js file.
ater running the above command go to localhost register yourself as customer or agent or admin.
To login as admin email= "admin@123.com" and password="qwerty";
To login as Agent email = "a@bc.com"  and password ="qwerty"
To login as customer email =" kv@1.com" and password ="qwerty"
It is a simple webapplication called loan management system a user or customer can register itself and register its account and can apply for the loan.
An agent can  login to system and can edit and view the loan information
 An admin can add new scheme and can edit the form and approved the form or reject the form.
a user can redirect to its dashboard by login to the system and enter its customer id in searchbar and then customer will redirect to the dashboard.
i just used hashing and salting for password encryption i did not used jwt because it will increase the size of header and loading time as well.




 
 
