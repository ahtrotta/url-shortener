# URL Shortener

A URL shortener built with the Ruby on Rails framework and PostgreSQL. 
Input a long URL and the app will give you a short URL that redirects you to the long URL.

### Deploying with Heroku

1. Install the Heroku CLI
2. Log in to the Heroku CLI: `heroku login`
3. Fork the repository and navigate into it
4. Create a new Heroku app: `heroku create`
5. Push the repository to Heroku: `git push heroku main`
6. Run the db migration: `heroku run rails db:migrate`


### ERD

![image](https://user-images.githubusercontent.com/45714532/169085686-1adea5f2-66f6-4a6e-a650-4d1bdcc6fe99.png)

- There is an index on the `short_url` column to increase redirect speed