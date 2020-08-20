# LendaTracka API

This is a Lending management system that helps individuals keep track of whoever they've lent money to. It automatically sends E-mail and SMS reminders 2 days before the payment due date.

## Technologies used in this API

- Rails

## Getting Started

**To get started, follow the instructions below**

To get a local copy up and running follow these simple example steps.

- Ensure you have ruby 2.5.1 and Rails 6 installed on your achine

- Run bundle to install the required gems

```
bundle install
```

- Create and migrate the DB

```
rails db:create db:migrate
```

- Seed the DB

```
 rails db:seed
```

- run the rails server

```
rails s
```

### Automated Tests

- Code coverage on this application is currently at 97% (using SimpleCov ).
- To run tests, simply run

```
 bundle exec rspec
```

### Endpoints

- All endpoints start with

```
/api/v1
```

- To see a full list of all endpoints, run

```
rails routes
```

## Authors

👤 **Adebola Adeniran**

- Github: [@githubhandle](https://github.com/onedebos)
- Linkedin: [linkedin](https://www.linkedin.com/in/adebola-niran/)
- Portfolio: [portfolio](https://www.adebola.dev/)

## 📝 License

This project is [MIT](lic.url) licensed.

```

```
