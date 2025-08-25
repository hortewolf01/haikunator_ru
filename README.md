# HaikunatorRu

[![Gem Version](https://badge.fury.io/rb/haikunator_ru.svg)](http://badge.fury.io/rb/haikunator_ru)

Generate Heroku-like memorable random names to use in your apps or anywhere else.

## Installation

Add this line to your application's Gemfile:

    gem 'haikunator_ru'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install haikunator_ru

## Usage

HaikunatorRu is pretty simple. There is nothing to configure and it only has a single method, `.haikunate`:

```ruby
HaikunatorRu.haikunate # => "грубая-снежинка-1142"

# Token range
HaikunatorRu.haikunate(100) # => "безымянная-звезда-13"

# Don't include the token
HaikunatorRu.haikunate(0) # => "длинный-цветок"

# Use a different delimiter
HaikunatorRu.haikunate(9999, '.') # => "свежий.лист.6743"

# No token, no delimiter
HaikunatorRu.haikunate(0, ' ') # => "зелёный огонь"
```

## Contributing

Everyone is encouraged to help improve this project.
