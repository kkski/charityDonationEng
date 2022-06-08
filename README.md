# charityDonationEng

It is an app built using several Spring technologies, JS, JSP and is based on MySQL database.

To start it you need everything that you normally need while working with Spring, MySQL databases and Tomcat.

There is a start.sql file in resources with commands that let you create proper database in data source,
and creates default roles needed to work with the program.

Currently register creates a new user, if you want to check how admin dashboard looks
the easiest way would be altering a value in ROLE table from 'ROLE_USER' to 'ROLE_ADMIN'.


Known bugs:
- Checking for existing password while trying to edit profile does not work.
- Errors after failed login do not display
- There is no exception to handle failed login due to no activation
- Information about status of users (enabled or not) is not displayed properly in manage users view


App preview:
![charitydonation1](https://user-images.githubusercontent.com/66234443/172713813-8f8d5238-c1d0-4a2b-92f3-3286ff3a793d.png)
![charitydonation2](https://user-images.githubusercontent.com/66234443/172713838-83c26b5e-801e-49fb-9c07-425aa74c2d5a.png)
![charitydonation3](https://user-images.githubusercontent.com/66234443/172713855-8478d4d9-108c-418c-9878-19ae48f8e797.png)
![charitydonation4](https://user-images.githubusercontent.com/66234443/172713862-334e4582-a483-4443-9dda-6707d73625f7.png)
![charitydonation5](https://user-images.githubusercontent.com/66234443/172713870-b8a42013-7f17-42ea-b7ac-a2ad75b351cb.png)
![charitydonation6](https://user-images.githubusercontent.com/66234443/172713874-5b12eab4-79ee-49fd-a6ea-51d26a947fe0.png)
![charitydonation7](https://user-images.githubusercontent.com/66234443/172713877-fa02b95e-48e4-4c70-9f64-ed28c9241cbd.png)
![charitydonation8](https://user-images.githubusercontent.com/66234443/172713881-6be3380b-384e-405b-a89f-a5859c9fa727.png)
