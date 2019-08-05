# ADM Connect

An internal chat application, built for ADM, to facilitate interdepartmental communications.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Install these gems

```
gem install rails
gem install bcrypt
```

### Installing

Run bundle install

```
bundle install --without production
```

Setup database

```
rails db:migrate
rails db:seed
```


Then start the server

```
rails server
```


## Running the tests

```
rails test
```

## Deployment

This was built to be run on Heroku.

```
heroku login
```
Follow the instructions to login, and then

```
heroku new
```
And then

```
heroku push origin master
```
Finally to setup the database run
```
heroku run rails db:migrate
heroku run rails db:seed
```

## Built With

* [Ruby on Rails](https://rubyonrails.org/) - The web framework used
* [Bootstrap](https://getbootstrap.com/) - CSS framework


## License

This project is licensed under the MIT License