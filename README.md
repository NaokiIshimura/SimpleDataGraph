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

## Preparation

1. migration
```
$ rake db:migrate
```

2. language
```
# config/initializers/i18n.rb
Rails.application.config.i18n.default_locale = :en
```
3. server address
```
# config/application.rb
config.server = 'localhost:3000'
```

4. mail setting
```
# config/environments/development.rb
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
```
```
# config/environments/development.rb
  :user_name => 'gmail_address',
  :password => 'password'
```

## How to use

Please start up the application and check how to use page.