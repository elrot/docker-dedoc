# docker-redoc

A Docker image which serves [ReDoc](https://rebilly.github.io/ReDoc/) documentation.

To serve `swagger.yaml` in the current directory:

    $ docker run elrot/redoc -p 80:80 -v $(PWD)/swagger.yml:/usr/share/nginx/html/swagger.yml

And it'll be running at [http://localhost](http://localhost).
