# Motosmart

this is an Api for the test of motosmart

## 🔧 Built with

- Ruby
- Ruby on Rails
- Ruby gem bundler
- Linters
- VS code

## ⚒️ Tested with

- Ruby gem RSpec
- Ruby gem capybara


## 📝 Pre-requisites

- Ruby ruby 2.7.0
- Ruby on Rails 6.1
- Postgresql


## 🤖 Getting Started

To get a local copy up and running follow these simple steps:

1. Go to this repository
2. Press the "Code" button and copy the link.
3. Clone it using git command `git clone <link>`.
4. Follow 'Setup' steps.

## 📝 Setup

1. Open the terminal.
2. On the terminal navigate to the project directory using `cd kakebo/`.
3. Install dependencies using: `bundle install`.
3. If it required: `bundle update`.
4. Migrate the database: `rails db:create`.
5. Migrate the database: `rails db:migrate`.
6. If required run: `yarn install`, and repeate step 4.
7. Start the application : `rails server`.
8. To Stop the application : Press `Ctrl + c`

## 📝 How to use the application?

1. Open the terminal and go to the directory.
2. Start the application : `rails server`.
3. Open the browser and go to : `http://localhost:3000/api/v1`
## Test
you can test the aplication introduccing data with the console of rails and you can see the data with the next commands
curl -X GET http://localhost:3000/api/v1/ranking/actual
curl -X GET http://localhost:3000/api/v1/ranking/2023/05
 curl -X POST -H "Content-Type: application/json" -d '{"kilometers": 900}' http://localhost:3000/api/v1/ranking/record?user_id=user_id

## 👥 Author

👤 **David Leonardo Castillo R**

- Github: [@David Castillo](https://github.com/Fanger53)
- Twitter: [@David Castillo](https://twitter.com/DavidLe97005129)
- Linkedin: [@David Castillo](https://www.linkedin.com/in/david-castillo-61ba10b8/)
