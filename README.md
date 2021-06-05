# Vocial

Database server
  * postgres
  * db name: *vocial_dev*
  * port: 5432

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Running in Docker using docker-compose

  * build `vocial` image

    > docker docker build -t vocial .

      OR

    > docker-compose build -t vocial .

  * build database image and up application

    > docker-compose up

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Helping Links

- [How to Run Your Phoenix Application with Docker](https://pspdfkit.com/blog/2018/how-to-run-your-phoenix-application-with-docker/)
- [Deploy a Phoenix app with Docker stack](https://dev.to/ilsanto/deploy-a-phoenix-app-with-docker-stack-1j9c)