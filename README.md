# Socket Actioncable
=============

Author
----------
Pawan Chaurasia


How to run
------------

1. clone the repo
2. Go inside the folder and do bundle install
3. Change the database yml file
4. Run rake db:create db:migrate
5. Make sure you have redis installed
6. Configure your cable.yml file according to need
7. Run rails s


Project flow
-------------
1. Open you localhost:3000
2. select any square it will be marked as red border
3. Click on input field a bootstrap color picker will open
4. Select any color and click outside the picker
5. the selected color will be reflected to all user who has subscribed to that channel
