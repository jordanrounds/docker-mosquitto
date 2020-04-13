# Eclipse Mosquitto Docker Container
This project has a script for setup of a Eclipse Mosquitto container using docker-compose. It builds all the directories for volumes setting proper permissions, and itializes a mosquitto config file setting up authentication on ports 1883 and 9001

## Getting Started
By default this will create a user named hass with a password of hass. If you'd like to use something different, they can be changed in the .env file.

## Installing
Run the mosquitto-setup.sh script. This will create directories named config, log, and data. It will set the owner of data and log to 1883, which is what the container needs to be able to write to the volumes.

## User Management
If you want to add additional users, delete, or change passwords. You can run the mosquitto-user.sh script, and it will handle running the mosquitto_passwd commands in the container and restarting the mosquitto process.

## Acknowledgments
Thanks to thelebster's example to get me started.
https://github.com/thelebster/example-mosquitto-simple-auth-docker
