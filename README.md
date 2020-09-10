# TestMax Coding Project by Michael Li
An event sign-up landing page with error handling and a confirmation page, built with Ruby on Rails.

### Setup
Clone the project from Github:

	git clone https://github.com/mcli830/testmax-challenge.git

In the project's root directory, install Ruby dependencies with:

	bundle install

If you have MySQL on your system, you can run the project in _development_ mode. Otherwise set the following environment variables to run the project in _production_ mode, which will access the remote MySQL server:
	
	export RAILS_ENV=production
	export MYSQL_DATABASE_PASSWORD=password

> Replace `password` with your password.

Start the server with

	rails server

Finally, navigate to `localhost:3000` in your web browser to use the application.

> The default port is `3000`, but you can customize which port you run the server on by setting the `port` environment variable with:
> `export PORT=xxxx`

##### Windows Environments

If you are using Windows, setting environment variables requires different syntax:

###### PowerShell

	$env:RAILS_ENV = 'production'
	$env:MYSQL_DATABASE_PASSWORD = 'password'

###### Command Prompt

	RAILS_ENV=production MYSQL_DATABASE_PASSWORD=password rails server

> When using  Windows Command Prompt you must set environment variables inline with `rails server`.

### Gems
The `MySQL` database is configured with the `MySql2` gem.
##### Additional gems:
- `bulma-rails`: CSS/SCSS framework.

### Database
The database consists of a single User model with the following schema:

	     user_id: int
	  first_name: string
	   last_name: string
	       email: string
	        pnum: string    // phone number
	  created_at: timestamp

The User model validates name, email, and phone number fields with regular expression formatting. Email fields must be unique.

> The sign-up form accepts user input for a _full_name_ attribute which is parsed and validated by the User controller to yield _first_name_ and _last_name_ values for the database.

### UI Framework
This project uses [Bulma](https://bulma.io/) as a CSS styling foundation, which provides a good starting point for consistent theming tools and responsive layout components to quickly build custom styles from. You can find this project's Sass entry point at:

	app/assets/stylesheets/application.scss

### Views
`.erb` view components follow standard Rails patterns:
- Extendable page layouts in `app/views/layouts`
- controller-linked views
- shared partials in `app/views/shared`.

### Assets
As per Rails design patterns, image assets are stored in `app/assets/images	`.