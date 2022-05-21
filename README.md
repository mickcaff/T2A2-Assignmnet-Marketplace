#### GitHub & Heroku Links
GitHub Repo [link](https://github.com/mickcaff/T2A2-Assignmnet-Marketplace)

Live website deployed on Heroku [link](https://shielded-escarpment-92547.herokuapp.com/)

# FarmPlace - Farm Services Marketplace

![](/md_images/logo_full.svg)

### What is FarmPlace?
Farmplace is a two sided marketplace which offers productivity improvements for **agricultural service providers** and **farmers**.

#### Why does the Australian agriculture industry need a services marketplace?

The technology used within the Australian agricultural industry is increasing at an astonishing rate. Farmers who can implement the latest technologies reap the cost advantages when production becomes more efficient. However, along with the advancement in technology, there is also an associated increase in price for more advanced machinery. 

It has become far too expensive for farmers to own all the latest machinery, especially when sitting idle waiting for the next crop to be planted or harvested. This has led to an increasing trend for farmers to outsource specialised operators and machinery for specific tasks within the growing cycle. These tasks could include planting, harvesting, livestock transport, spraying, or agronomy services. 

Currently no two-sided marketplace exists within the Australian agriculture industry. Before FarmPlace, farmers would rely on the contractors that they had previously used or could contact through traditional means. FarmPlace offers a marketplace where contractors can find more prospective business and farmers can better evaluate potential contractors based on price, reviews, location, equipment etc. 

While farming can appear to be a slow process, there are critical windows of opportunity in which a crop needs to be planted, harvested or livestock moved location. During these critical points in time, Farmers can rely on FarmPlace to let them know which contractors they should be using. Along with the benefit to farmers, contractors can rely on FarmPlace to find more business, which will allow them to have a higher return on their investment in equipment.

#### Who can post their services on FarmPlace?

Farmplace is open to any contractors who offer sevices to farmers. This may include:
- Planting
- Harvesting
- Spraying
- Transportation
- Agronomical
- Cultivation
- Fruit picking
- And many more

### Functionality & Features

Features of the web application include:
- Sign up and create a profile
- Post services
- Search for services with keywords
- Services are displayed on a map with markers
- View each services details page
- Leave reviews about each service
- Send private messages to other users


### Screenshots

#### Front marketing page
![](/md_images/page1.png)

#### Main search page
![](/md_images/page2.png)

#### Individual listing page
![](/md_images/page3.png)

#### Service input form
![](/md_images/page4.png)

#### Message inbox
![](/md_images/page5.png)

#### Sign in page
![](/md_images/page6.png)




# Planning

### User Stories

Detailed below are the planned user stories which cover the MVP needs for the app. 

![](/md_images/userstories.png)


### Task Planning

To plan and track all the tasks required for develpment, I used a Kanban board. A kanban board is a popular framework within agile development where work items are displayed in groups on a board which detail the exact state of every piece of work at any time.  

Trello was used as the tool to create the Kanban board. As each task was planned it was added to the kanban board and then progressed through each stage (to-do, doing, code review and testing) before being checked off as done. 

The kanban used to track the development of this app can be viewed [here.](https://trello.com/b/pC6XfVXL)

![](/md_images/trello.png)

### Sitemap

![](/md_images/site_plan.png)


### Wireframes

Wireframes were created at the beginning of the project to plan the overall look and how the app would flow between pages. Below are wireframes for six of the main pages in three different sizes. 

#### Root Page - Opening Marketing
![](/md_images/Root.png)
#### Main Search Page
![](/md_images/MainSearch.png)
#### Sign Up Page
![](/md_images/SignUp.png)
#### Individual Service Show Page
![](/md_images/ListingShow.png)
#### Provider Services Index Page
![](/md_images/ProviderServicesListings.png)
#### User Inbox Page
![](/md_images/MessageInbox.png)

# Tech Stack

Tech Stack | Use
--- | ---
HTML & TAILWIND CSS | Front end markup and styling
Ruby | Object oriented programming language
Rails | MVC Framework
Stimulus.js | Front end Javascript framework

### Third Party Services

3rd Party Service | Use
--- | ---
GitHub | Software version control cloud hosting
Devise | Authentification
Rolify |
Pundit |
Cloudinary | Cloud file storage
Google Maps API | Geocoding addresses, embedded maps
Heroku | Deployment & Hosting

##### Additional Rails Gems

Rails Gems | Use
--- | ---
Ransack | Frontend database search feature
Pagy | Front end pagination
rails-erd | Generates an ERD based on the active record models


# Database


### Project Models

The database schema connsists of the following models:

Model Name | Description 
--- | --- 
Users | Email & password
Services | Title, provider, description, location details, pricing 
Profiles | Name, username
Conversations | Logs conversations between users
Messages | Individual messages for each conversation
Comments | Reviews for each service
Active_storage_attachments | Cover images for services and profile images

### Database Relations

These models have the following relationships with each other:

Model 1 | Relationship | Model 2
--- | --- | ---
users | has_many | services
users | has_many | comments
users | has_one | profile
services | belongs_to | user
services | has_many | comments
services | has_one_attached | active_storage_attachments (cover_image)
profiles | belongs_to | user
profiles | has_one_attached | active_storage_attachments (avatar_image)
conversations | belongs_to | user (sender)
conversations | belongs_to | user (receiver)
conversations | has_many | messages
messages | belongs_to | conversation
messages | belongs_to | user
comments | belongs_to | service
comments | belongs_to | user

### Database Schema Design & ERD

The diagram below details the database schema design along with the relationships specified in the previous table.

![ERD](/md_images/schema_erd.png)

#### Discussion

The above ERD attempts to create a normalized database structure to reduce data redundancy and improve efficiency. The database schema represents only what is necessary for a farm services marketplace MVP. The schema aims to have no duplication and has tried to use appropriate definitions of entities and attributes. Each model aims to serve a single purpose, with no duplication between tables.

### High Level Components







