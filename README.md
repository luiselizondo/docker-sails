Sails.js running on Docker

# Build

	docker build -t yourname/sails .

# Or Pull:

	docker pull luis/sails

# Run
First create a new project:

	docker run -it --rm -p 1337:1337 -v /path_to_project_on_host:/var/www -v /var/log/sails:/var/log/supervisor luis/sails sails new

Then install dependencies:

	docker run -it --rm -p 1337:1337 -v /path_to_project_on_host:/var/www -v /var/log/sails:/var/logs/supervisor luis/sails npm install

Note: If you get an error, remove the node_modules directory on the host and try again the last command, aparently there's a bug with the latest version of NPM

Run the server:

	docker run -d -p 1337:1337 -v /path_to_project_on_host:/var/www -v /var/log/sails:/var/log/supervisor luis/sails

If you need to run any sails command, just do:

	docker run --it --rm -v /path_to_project_on_host:/var/www luis/sails sails command


