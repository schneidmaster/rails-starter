# Application

Description

## Development

### Prerequisites

* git
* ruby 2.2.3 ([rvm](https://rvm.io/) recommended)
* [postgres](http://www.postgresql.org/) (`brew install postgres` on OSX)

### Setup

1. Clone the repository (`git clone git@github.com:owner/repo.git`)
2. Install gem dependencies: `bundle install`
3. Create and migrate the database: `rake db:setup`
4. Run `rake db:seed` to load the default skills.
5. Create a `.env` file for OAuth keys, formatted as follows. Create test apps to get credentials.
6. Run `rails s` and visit [http://localhost:3000](http://localhost:3000) in your browser

```
OAUTH_KEY=whatever
```

### Testing

* `bundle exec rake parallel:spec` for integration tests
* `bundle exec rubocop` for linting
* `bundle exec brakeman` to catch any security holes

`parallel_tests` is also set up for faster tests -- it runs your tests in parallel by splitting them up among your CPUs. To set up and run tests in parallel:

* `RAILS_ENV=test bundle exec rake parallel:create`
* `RAILS_ENV=test bundle exec rake parallel:load_schema`
* `RAILS_ENV=test bundle exec rake parallel:spec`

## Contributing

1. Fork it ( https://github.com/owner/repo/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## License

License goes here
