[![Code Climate](https://codeclimate.com/github/j3ck/guest-book/badges/gpa.svg)](https://codeclimate.com/github/j3ck/guest-book)

Web application guest book


Local mailer:

configuration for `config/environments/development.rb`:

```ruby
#Mailcatcher
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = { address: 'localhost', port: 1025 }
```

Run mailcatcher:
```console
mailcatcher
```

Use http://localhost:1080/ for view local mails.

Setup and run rails:
```console
cp config/database.yml.example config/database.yml
rake db:create
rake db:migrate
rails s
sidekiq -C config/sidekiq.yml
```
