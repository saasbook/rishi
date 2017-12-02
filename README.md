# Project Rishi x CS 169


## Project Statistics
[![Maintainability](https://api.codeclimate.com/v1/badges/57cf52162801e0146fd2/maintainability)](https://codeclimate.com/github/AdeelCheema/Berkeley-Rishi/maintainability)

[![Test Coverage](https://api.codeclimate.com/v1/badges/57cf52162801e0146fd2/test_coverage)](https://codeclimate.com/github/AdeelCheema/Berkeley-Rishi/test_coverage)

[![Build Status](https://travis-ci.org/AdeelCheema/Berkeley-Rishi.svg?branch=master)](https://travis-ci.org/AdeelCheema/Berkeley-Rishi)

## Pivotal Tracker
[Project Rishi Pivotal Tracker](https://www.pivotaltracker.com/n/projects/2118222)

## Heroku

https://berkeley-rishi.herokuapp.com/

## Customer's Business Need:

This app will serve as the homepage of Project Rishi's Berkeley chapter. The goal is to have the page showcase the work that has been done over the years in their deployment in India for the general public to see. They would also like an internal method that would allow Project Rishi members to update each other on their progress in preparation for their annual trip to india. 

More information about Project Rishi can be found here:

http://www.projectrishi.org/
https://www.facebook.com/ucbprojectrishi/

## Deployment Notes

Project Rishi's site is built using Ruby on Rails. All needed packages are located in the Gemfile. In order to use the Google Maps API and the Google Authentication API, we use Figaro to manage our authentication keys. 

In the root project directory, create an application.yml file. You will need to define the following variables

google_api_key: #GoogleMapsApiKey400837437240
google_client_id: #OAuth Client ID
google_client_secret: #Oauth Client Secret

In order to access the internal sign in pages, please add your email to the UserList table within the seeds file.
