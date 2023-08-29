# README
### An OAuth provider for 2 clients. `client-one` & `client-two`

* Project init by: `rails _5.2.4.2_ new identity --database=postgresql --skip-turbolinks -T`

## Run the app
* `bundle exec rake db:create`
* `bundle exec rake db:migrate`
* `bundle exec rails s -p 3000`

## Add a new app
* visit `/oauth/applications/new`
* Enter the App Name and Redirect URI
* Client can use the newly created `Application ID` and `Secret` for OAuth

### Host
* Switch from fly.io back to Heroku in Feb 2023
* 08-28-2023: Removed Heroku Postgres to save money. Add it back in "Add-ons" when need to fire up the app again.
