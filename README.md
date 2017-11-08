# Enroco Labs

Enroco Labs is the base of Enroco react product suite!

# Getting Started:

== Follow the guidelines to start developing your application. You can find
the following resources handy:

* The Getting Started Guide: http://guides.rubyonrails.org/getting_started.html
* Ruby on Rails Tutorial Book: http://www.railstutorial.org/

== Steps to follow to integrate react and webpacker into the rails application

1. At the command prompt, create a new Rails application:
       <tt>rails new app_name</tt> (where <tt>app_name</tt> is the application name)

2. Change directory to <tt>app_name</tt> and start the web server:
       <tt>cd app_name; rails server</tt> (run with --help for options)

3. Go to http://localhost:3000/ and you'll see:
       "Welcome aboard: You're riding Ruby on Rails!"

4. Add 'react-rails`, `webpacker` gems in the Gemfile

5. Run `bundle install`

6. Install the webpack, dependencies and generate configuration files, run:
			  `bundle exec rails webpacker:install`

7. To use webpacker with react, run:
			  `bundle exec rails webpacker:install:react`

<!-- 
8. Add foreman gem in the Gemfile that acts as process manager for applications with multiple components

9. Run `bundle install`

10. Create Procfile with necessary servers (example: npm start npm run test)

11. Create bin/server file and add 'bundle exec foreman start -f Procfile.dev' to run foreman server

12. Run `foreman start` to start the server
-->

13. Create a controller, run
				`rails generate controller 'controller_name' 'action_name'`

14. Add the root path in routes.rb file to map the rails requests to the root of the application, as
				`root 'controller#action'`

15. Create a react component in app/javascript/controller

16. To render the react components, add the below tag in the views
				* <%= javascript_pack_tag 'application' %>

17. Add it to the views, as
				* <%= react_component('component_name') %> or
				* <%= react_component('folder_name/component_name') %>

18. Pass props to the component, as below
				* <%= react_component('component_name', {props})>

19. Add the components in packs folder, as below
				* <%= javascript_pack_tag 'file_name' %>
