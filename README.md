# Yum Break - Backend

For a short project description, please refer to the [food-market-frontend](https://github.com/audefaucheux/food-market-frontend) markdown.

To get the backend up and running, run the below commands:

Run bundle install

```
bundle install
```

Create the database

```
rails db:create
```

Run the migration files

```
rails db:migrate
```

Run the seed data - feel free to edit this file if you would like to add more seed data. Please note the markets and cuisines can only be added in the backend.

```
rails db:seed
```

Create `application.yml` file in the config folder and add an environment variable `RAILS_SECRET`
eg:

```
RAILS_SECRET: "123"
```

Run the app on the local host

```
rails s
```

Once you completed all this steps, refer back to the [food-market-frontend](https://github.com/audefaucheux/food-market-frontend) "Getting Started" section to set the frontend.
