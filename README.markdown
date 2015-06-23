# Portfolio Website
This project is meant for web developers, photographers, and people who want a simple portfolio online and have a basic understanding of the Ruby on Rails framework.

It has three major sections...

* Projects
* About
* Contact

## Projects
This is a simple CRUD where you can log in through visiting */users/sign_in* and start creating, updating and deleting your projects online. Each project has a title, subtitle, description, cover and associated captioned screenshots.

## About
This is a plain static page you can modify at *app/views/pages/about.html.erb*

## Contact
This is a simple contact form based on Greg Pollack's Rails Best Practices, it sends emails directly not saving them in the DB.

This is a lovingly hand-coded open-source branch of my own portfolio website, so please feel free to modify it, add your own styles and drop me a link once it's done! :) It will be very much appreciated... Enjoy!

## Setup

1. Install bundler
  ```bash
  gem install bundler
  ```

2. Clone the repo
  ```bash
  git clone git@github.com:rebagliatte/my-portfolio.git
  ```

3. Install the required gems
  ```bash
  cd my-portfolio
  bundle
  ```

4. Get the required env variables in place
  ```bash
  cp .env.example .env
  ```

5. Create your development's database
  ```bash
  foreman run rake db:create
  ```

6. Load your DB with a fresh copy from production
  ```
  heroku pg:pull HEROKU_POSTGRESQL_OLIVE portfolio_development --app my-portfolio
  ```

7. Start the server
  ```bash
  foreman start
  ```
