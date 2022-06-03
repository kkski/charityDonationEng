# charityDonationEng

It is an app built using several Spring technologies, JSP and is based on MySQL database.

To start it you need everything that you normally need while working with Spring, MySQL databases and Tomcat.

There is a start.sql file in resources with commands that let you create proper database in data source,
and creates default roles needed to work with the program.

Currently register creates a new user, if you want to check how admin dashboard looks
the easiest way would be altering a value in ROLE table from 'ROLE_USER' to 'ROLE_ADMIN'.


Known bugs:
- Checking for existing password while trying to edit profile does not work.
- Errors after failed login do not display
- There is no exception to handle failed login due to no activation
