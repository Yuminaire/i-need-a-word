# INAW (I Need A Word)

**INAW** is a RubyGem that allows to randomly choose a word in different languages.
For the time being it only has online support, which means it will choose a word on random word generator website but I will add offline support in the near future.
Languages available are: Arabic (AR), Danish, (DA), Dutch (NL), Finnish (FI), French (FR), German (DE), Italian (IT), Portuguese (PT), Spanish (ES), Swedish (SV).
See **Usage** for how to use INAW.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'inaw'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install inaw

## Usage

Available languages parameters are: AR, DA, DE, ES, FI, FR, IT, NL, PT, SV.

 ```ruby
require INAW

# chooses a random English word
random_english_word = INAW.word('EN')

# chooses a random French word
random_english_word = INAW.word('FR')
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[realYuushi/i-need-a-word.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
