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

4. Add `react-rails`, `webpacker` gems in the Gemfile

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
				`<%= javascript_pack_tag 'application' %>`

17. Add it to the views, as
				`<%= react_component('component_name') %>` or
				`<%= react_component('folder_name/component_name') %>`

18. Pass props to the component, as below
				`<%= react_component('component_name', {props})>`

19. Add the components in packs folder, as below
				`<%= javascript_pack_tag 'file_name' %>`

== Steps to configure i18n and l10n

20. Add `rails-i18n` gem in the Gemfile for collecting locale data for Ruby on Rails I18n

21. Run `bundle install`

22. Create YAML file for each language and specify key/value pairs. For reference http://guides.rubyonrails.org/i18n.html#how-i18n-in-ruby-on-rails-works

<!--
	Example: config/locales/de.yml
		de:
			welcome:
				index:
					hello: "Hallo Welt"

	Usage in view
		<%= t '.hello' %>

	Usage in controller
		flash[:notice] = t('hello')
-->

== For asset pipelining

23. Install jquery in the application, run `yarn add jquery` and add it in `app/assets/javascripts/application.js`

24. Change the default `assets.compile` value to `true` in `config/environments/production.rb`

25. Generate a secret-key by running `rake secret` ==> gives a secret token

<!-- To secure visitors connection and keep app more secure -->

26. Create a file in config/initializers secret_key_base.rb and add `Rails.application.config.secret_key_base = token`

== Steps to setup test frameworks

27. Add `rspec-rails` gem in the Gemfile to support Rspec testing environment

28. Run `bundle install`

<!--
29. Add `database_cleaner` gem in the Gemfile to ensure a clean database state for testing

30. Run `bundle install`
-->

31. Install dependencies to transpile the code, both for the source and our tests
				`npm i babel-register babel-loader babel-core babel-preset-react babel-preset-es2015 --save-dev`

32. Include karma, mocha, chai, chai-dom, sinon, enzyme by running the following commands
				`npm install karma --save-dev`

				`npm install mocha --save-dev`

				`npm install chai-dom --save-dev`

				`npm install karma-mocha --save-dev` ==> mocha as a test framework with karma

				`npm install karma-chai --save-dev`	==> an assertion library

				`npm install karma-sinon --save-dev`	==> for stubbing and spying

				`npm install enzyme enzyme-adapter-react-15 --save-dev`

33. Run `./node_modules/karma/bin/karma init` to create karma.conf.js and make necessary configurations

34. Create specs and run `./node_modules/karma/bin/karma start karma.conf.js`

35. Add test scripts in package.json, to run tests `npm run test`

				`"test": "npm run karma -- --single-run"`

				`"karma": "BABEL_ENV=development NODE_ENV=test node_modules/karma/bin/karma start karma.conf.js"`

<!--
36.	To setup enzyme, configure it as below
				`const enzyme = require('enzyme')`
				`const Adapter = require('enzyme-adapter-react-15')`

				`enzyme.configure({ adapter: new Adapter() })`
-->

== Steps to setup ESLint for linting

37. To install ESLint, run `npm install eslint --save-dev`

38. To configure ESLint, run `./node_modules/.bin/eslint --init`

39. Add start scripts to package.json, `"start": "bin/webpack-dev-server"` and run scripts as `npm run start`

== Steps to setup Caching mechanism

40. Add `dalli` gem in the Gemfile, it interacts with memcached cache store through ruby

41. Run `bundle install`

<!--
42. Add `connection_pool` gem in the Gemfile ==> it is a cache of database connections

43. Add `memcachier` gem in the Gemfile ==> sets the memcached environment variables to the values of corresponding memcachier environment variables.

44. Run `bundle install`
-->

45. Configure cache_store to dalli_store in corresponding environments.
