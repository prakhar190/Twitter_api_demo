# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  2.3.1

* System dependencies
  Mysql
* Configuration

* Database creation
  Rails db:create

* Deployment instructions
  - Set the followwing as environment variables <br />
      TWITTER_CONSUMER_KEY=********************************
      <br />
      TWITTER_CONSUMER_SECRET=*****************************
      <br />
      TWITTER_ACCESS_TOKEN=********************************
      <br />
      TWITTER_ACCESS_TOKEN_SECRET=*************************

  - Install Mysql Database on the server

* Run on local
  - Clone the repo
  - Install ruby 2.3.1
  - Go to the root of project and run bundle Install
  - Make a new file named .env in root of the project and paste the following in that file <br />
      TWITTER_CONSUMER_KEY=********************************
      <br />
      TWITTER_CONSUMER_SECRET=*****************************
      <br />
      TWITTER_ACCESS_TOKEN=********************************
      <br />
      TWITTER_ACCESS_TOKEN_SECRET=*************************
      <br />
    Replace stars with the original keys. You will have to make a app on twitter's developer account to get these keys.
