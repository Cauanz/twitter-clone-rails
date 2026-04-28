# Twitter Clone
#! IT'S STILL NOT FINISHED !#

A Twitter clone developed with Ruby on Rails for educational purposes. This project is a basic implementation of Twitter features, such as creating tweets, following users, and a personalized timeline, built purely for learning purposes and to explore tools different from the ones I use on a daily basis.


## Requirements

* Ruby 3.0+
* Rails 7.0+
* PostgreSQL 12+
* Node.js 16+

## Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd twitter_clone
```

2. Install the dependencies:
```bash
bundle install
yarn install
```

3. Set up the database:
```bash
rails db:create
rails db:migrate
```

## Usage

Start the Rails server:
```bash
rails server
```

Access the application at `http://localhost:3000`

## Features

* Create and edit tweets
* Follow/unfollow users
* Personalized timeline
* Retweets and likes

## Tests

Run the test suite:
```bash
rails test
```

## License
MIT
