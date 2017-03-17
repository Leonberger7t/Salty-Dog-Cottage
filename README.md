# cape-cod-house
This is a rental application for a summer cottage.  


# The home page uses bootstrap and contains basic information.

Links to  Photos
          Informaiton
          Request
          Calendar

There are sign_up and sign_in administration functions but there are not needed to use the application.  These functions are hidden.  There is also a requests function that is hidden to update a request to accepted.

#  Photo features a Slick-slider carousel to display photos and titles.

#  Information page was created using JQuery

#  Request Page is used for a user to request a reservation or more information.  The user will fill out a form and the form will send an email using sendgrid to my personal email and a copy will be sent to the user's email.  IF the email is successful the user will be taken back to the home page.  If the email was not successful an error message will display

# Calendar - I used Datepicker - after a lot of trial and error because of conflict with bootstrap.
Once a an email is received as the owner I can log in with a hidden admin sign in /Requests and update by making changes to the date and changing the type to Accept.  Once the reservations is accepted it will update the calendar.  This part is not working as of yet.

Future enhancements will be to automatically update the calendar with reservations.  Email notifications for reservations will be sent out automatically 4 days before reservation to provide information on how to access the property and a reminder of what to bring.  I also hope to add payment ability and the ability to automatically refund the deposit 7 days after the rental has ended.



The application uses JS, CSS, HTML, JQuery, Datepickerand Bootstrap.
