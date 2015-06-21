# OmniAuth CTU FIT

This gem contains the ČVUT/CTU FIT OAuth 2.0 strategy for OmniAuth 1.0.

## Installing

Add to your `Gemfile`:

```ruby
gem 'omniauth-fitcvut-oauth2', '~> 0.0'
```

Then `bundle install`.

## Basic Usage

    use OmniAuth::Builder do
    	provider "fitcvut", ENV['FIT_APP_ID'], ENV['FIT_APP_SECRET']
    end

## Auth Hash

Here's an example *Auth Hash* available in `request.env['omniauth.auth']`:
```ruby
{
  "provider" => "fitcvut",
  "uid" => "username",
  "info" => {
    "name" => "username",
    "email" => "username@fit.cvut.cz"
  },
  "credentials" => {
    "token" => "0000000-0000-0000-0000-000000000000",
    "refresh_token": "0000000-0000-0000-0000-000000000000",
    "expires_at": 1442689203,
    "expires": true
  },
  "extra" => {
    "raw_info" => {
      "client_id": "00000000-0000-0000-0000-000000000000",
      "scope": [],
      "audience": [],
      "client_authorities": [
        "ROLE_CLIENT"
      ],
      "expires_in": 7772621,
      "user_id": "username",
      "user_email": "username@fit.cvut.cz",
      "user_authorities": [
        "ROLE_R",
        "ROLE_E",
        "ROLE_L",
        "ROLE_S",
        "ROLE_U",
        "ROLE__",
        "ROLE_O"
      ],
      "client_only": false
    }
  }
}
```

## License

Copyright (c) 2015 by Dominik Jancik based on
Copyright (c) 2011 by Lee Martin and SoundCloud 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.