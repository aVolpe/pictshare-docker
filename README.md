# Simple docker image for [pictshare](https://github.com/chrisiaut/pictshare)

This images contains `php5`, `php5-gd` and a `nginx` ready to use [pictshare](https://github.com/chrisiaut/pictshare).

The image is based on [this nginx image](https://github.com/ishakuta/docker-nginx-php5)

## Run the image

I tested this image with `docker-compose`,  but you can use only docker, something like

* Clone this project `git clone https://github.com/aVolpe/pictshare-docker.git`
* Go to the directory `cd pictshare-docker`
* Build the image `docker build -t test/pictshare .`
* Run the image `docker run test/pictshare`
* Go to [localhost](http://localhost)
