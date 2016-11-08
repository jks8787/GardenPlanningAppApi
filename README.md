# Garden Planning App -- The Api

## Install Pre-requisite Depedendencies

### Install Xcode Tools

```
xcode-select --install
```

### Install Homebrew
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### Install RVM

```
gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
```

Load up RVM on shell instantiation

```
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.bash_profile
```

Ensure RVM is installed correctly

```
type rvm | head -1
```

### Install Ruby

```
rvm install 2.3.0
```

### Install Bundler

```
gem install bundler
```

### Install PostgreSQL

```
brew install postgres
```

### Clone Repo

```
git clone git@github.com:jks8787/GradenPlanningAppApi.git cd && GradenPlanningAppApi
```

## Install Project Dependencies

### Install Ruby Dependencies

```
bundle install
```

#### Run PostgreSQL

```
postgres -D /usr/local/var/postgres
```

### Initialize Database

#### Create Database

```
rake db:create
```

#### Migrate Database

```
rake db:migrate
```

#### Seed Database

```
rake db:seed
```

### Run Application

```
rails s
```

## Testing Authentication

### Generate Token

```
curl -H "Content-Type: application/json" -X POST -d '{"email":"example@example.com","password":"123password"}' http://localhost:3000/authenticate
```

This should result in:

```
{"auth_token":"SOME_TOKEN"}
```

### Check unauthorized access

```
curl http://localhost:3000/garden_layouts
```

This should result in:

```
{"error":"Not Authorized"}
```

### Check authorized access

```
curl -H "Authorization: SOME_TOKEN" http://localhost:3000/garden_layouts
```

This should result in:

```
[
  {
    "id": 1,
    "app_id": 0,
    "data": "",
    "compeleted": null,
    "created_at": "2016-11-08T00:35:34.602Z",
    "updated_at": "2016-11-08T00:35:34.602Z",
    "user_id": 1
  }
]
```

## Authentication accomplished with
- [bcrypt](https://rubygems.org/gems/bcrypt/versions/3.1.11)
  - ensures the password is properly encrypted into the database
- [jwt](https://rubygems.org/gems/jwt/versions/1.5.4)
  - encodes and decodes tokens using (HMACSHA256)
- [simple_command](https://rubygems.org/gems/simple_command/versions/0.0.9)
  - creates services

## References
- [Authentication with JWT](https://www.driftingruby.com/episodes/rails-api-authentication-with-jwt)
- [Token based authentication with Ruby on Rails 5](https://github.com/pluralsight/guides/blob/master/published/ruby-ruby-on-rails/token-based-authentication-with-ruby-on-rails-5-api/article.md)
- [Authenticating API Clients with JWT and NGINX Plus](https://www.nginx.com/blog/authenticating-api-clients-jwt-nginx-plus/)
- [Creating a Simple Node/Express API Authentication System with Passport and JWT](http://blog.slatepeak.com/creating-a-simple-node-express-api-authentication-system-with-passport-and-jwt/)
