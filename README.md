# Simple Graph

This is a web application that can easily display received data graphically.

## About

- Receive data with POST.
- Graphically display the received data.

## Sample Request

```
$ curl http://xxx.xxx.xxx/data -X POST \
-H "X-Auth-Token:xxxxxxxxxx" \
-H 'Content-Type:application/json' \
-d '{"data1":1,"data2":2, "data3":3, "data4":4, "data5":5}'
```

## Set up

1. bundle install
```
$ bundle install
```

2. migration
```
$ rake db:migrate
```

3. language (option)
```
# config/initializers/i18n.rb
Rails.application.config.i18n.default_locale = :en
```
4. server address (option)
```
# config/application.rb
config.server = 'localhost:3000'
```

5. mail setting (option)
```
# config/environments/development.rb
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
```
```
# config/environments/development.rb
  :user_name => 'gmail_address',
  :password => 'password'
```

6. server start
```
$ rails server -b 0.0.0.0
```

## How to use

Please start up the application and check how to use page.