# _Parks Lookup API_

#### _This is an API Application built using Ruby on Rails, 06/12/2020_

#### By _**Zinfira Safargalieva**_

## Description

_This application includes the API for parks and state._

## Setup/Installation Requirements

Clone this repository via Terminal using the following commands:

* >$ cd Desktop
* >$ git clone https://github.com/Zinfira/parks_lookup.git
* >cd parks_lookup

Next, confirm that you navigated to the parks_lookup project directory by entering ```pwd``` in Terminal.
Then, run at the project's root directory via Terminal the following commands:
* >$ bundle install
* >$ rake db:create
* >$ rake db:migrate
* >$ rake db:test:prepare
* >$ rake db:seed
* >$ rails server 

This commands should prepare the database and start the server.
Open the browser(Chrome) and navigate to __http://localhost:3000/__

### You can test the API in Postman.

## Endpoints

| Request | Input | Output |
|---------|-------|--------|
| GET all parks | http://localhost:3000/parks | Return list of all parks |
| GET a park by id | http://localhost:3000/parks/:id | Return a park based on id |
| POST a new park | http://localhost:3000/parks and add name, location and content by clicking on "Body" in Postman just below the URL and passing in key-value pairs. | Post a new park |
| PUT a park | http://localhost:3000/parks/:id and update name and/or location and/or content by clicking on "Body" in Postman just below the URL and passing in key-value pairs. | Update a park |
| DELETE a park | http://localhost:3000/parks/:id | Delete a park with corresponding :id |
| GET | http://localhost:3000/parks?name=[NAME] | Return park with that name |
| GET | http://localhost:3000/parks?location=[LOCATION] | Return park with that location(state) |
| GET | http://localhost:3000/parks?content=[CONTENT] | Return park with that content |
| GET | http://localhost:3000/parks?page=[n] | Return that page with 3 parks on the the list |
| GET | http://localhost:3000/parks/1/random | Randomly returns a park | 

## Known Bugs

_Not known bugs at this time._


## Support and contact details

_If you have any issues with the program or you have any suggestions, email me <zsafargalieva@gmail.com>_


## Technologies Used

_Ruby, Rails, Postgresql, Postman_


### License

*Licensed under [MIT](https://en.wikipedia.org/wiki/MIT_License) license*

Copyright (c) 2020 **_Zinfira Safargalieva_**
