Original App Design Project - README Template
===

# Dealer Inventory Managaer 

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)

## Overview

### Description

This app will provide a space where small dealerships can have a simple app that displays their inventory 

### App Evaluation

[Evaluation of your app across the following attributes]
- **Category:** List 
- **Mobile:** Mobile-first experience.
- **Story:** Helps dealerships showcase and manage their vehicle inventory quickly and easily on the go.
- **Market:** Small dealership or car reseller needing better mobile inventory tools. A clear and underserved niche.
- **Habit:** Used multiple times a day to upload cars, Daily workflow tool.
- **Scope:** Vehicle details form, inventory list. Scalable later with website sync or customer chat.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can add a new vehicle by entering basic details
* User can view a list of all vehicles in the inventory

**Optional Nice-to-have Stories**

* App saves data locally so the inventory stays after closing the app
* User can edit existing vehicle details

### 2. Screen Archetypes

- [x] [Home Screen (Inventory List)]
* [User can view a list of all vehicles in the inventory. 

Add Vehicle Screen]
* User can add a new vehicle by entering basic details

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* [Home - goes to homescreen inventor list ]
* [Add - Goes to add vehicle screen ]
* [Settings - to reset data]

**Flow Navigation** (Screen to Screen)

- [x] [Homescreen]
- [x] [Add vehicle Screen]
* ...

## Wireframes
<img src="https://github.com/FaisalA-dev/DealerInventoryManager-/blob/main/wireframe.jpg?raw=true" width="600">
[Add picture of your hand sketched wireframes in this section]
<img src="YOUR_WIREFRAME_IMAGE_URL" width=600>

## Sprintweek 
Sprint Week 1: Thought process. I spent time thinking how my app should operate. I spent time designing how my app will look and how each screen will look

Sprint Week 2: After thinking on what to do I will start by designing the start up screen. 

Sprint Week 3: After the startup page is done I will start working on the rest of the screens.

Sprint week 4: make sure there are no bugs. Test everything and make sure the app works perfectly.

## Schema 
🌐 Networking Network Requests by Screen Login/Register Screen POST /login – Log in user POST /users – Register new user Inventory List Screen GET /classes/Car – Fetch list of cars GET /classes/Car?where={"status":"available"} – Fetch only available cars Add Car Screen POST /classes/Car – Add new car to inventory Car Details Screen GET /classes/Car/{objectId} – Get details of one car PUT /classes/Car/{objectId} – Update car info (e.g., mark as sold) Profile/Settings Screen GET /users/me – Get current user info PUT /users/me – Update user profile


### Models

Car	make: String, model: String, year: Int, price: Double, image: File, status: String (e.g., "available" or "sold"), description: String User	username: String, email: String, password: String Dealership	name: String, location: String, owner: Pointer<User>, logo: File

### Networking

- My app will not need any API's.
