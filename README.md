## DDS

Getting Started:
- `gem install foreman`
- `cp .env.sample .env`
- Create an applicaton on [Google Developer Console](https://console.developers.google.com) and enable the Google Maps Embed Api.
  - Copy the API token to `.env`
- `foreman start` to start the webserver (in place of `rails server`).
  - This parses `Procfile` and `.env`, learn more [here](https://devcenter.heroku.com/articles/procfile) and [here](http://blog.daviddollar.org/2011/05/06/introducing-foreman.html).

