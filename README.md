# Garden Planning App -- The Api

## Dependencies
* Ruby version -- 2.3.0
* Rails version -- 5.0.0

## To Start the app
* clone repo
* cd into the repo
* run `bundle install`
* be sure you you are running the correct ruby version
* run `rake db:create`
* run `rake db:migrate`
* run `rake db:seed`
* run `rails s`

## To test authentication
* run `curl -H "Content-Type: application/json" -X POST -d '{"email":"example@example.com","password":"123password"}' http://localhost:3000/authenticate`
* see a token is returned `{"auth_token":"SOME_TOKEN"}`
* run `curl http://localhost:3000/garden_layouts`
* see an error is returned `{"error":"Not Authorized"}`
* try with a token, run `curl -H "Authorization: SOME_TOKEN" http://localhost:3000/garden_layouts`
* see the garden_layout it returned

## Authentication accomplished with
* ruby 2.3.0 and rails 5.0.0 - to create user model
* the 'bcrypt' gem - to ensure the password is properly encrypted into the database
* the 'jwt' gem to  make encoding and decoding of HMACSHA256 tokens available
* the 'simple_command' gem to create services

## Inspired by
* https://www.driftingruby.com/episodes/rails-api-authentication-with-jwt
* https://github.com/pluralsight/guides/blob/master/published/ruby-ruby-on-rails/token-based-authentication-with-ruby-on-rails-5-api/article.md
* https://www.nginx.com/blog/authenticating-api-clients-jwt-nginx-plus/
* http://blog.slatepeak.com/creating-a-simple-node-express-api-authentication-system-with-passport-and-jwt/
