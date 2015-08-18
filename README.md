# Doala

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/doala`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'doala'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install doala

## Usage

```
$ pry
[1] pry(main)> require 'doala'
=> true
[2] pry(main)> Doala.face
=> "(⌒(´・△・`)⌒)"
[3] pry(main)> Doala.business_friend
=> "つば九郎"
[4] pry(main)> Doala.height
=> "アジアの頂点 cm"
[5] pry(main)> Doala.weight
=> "圧倒的な存在感 kg"
```

or 

```
$ bundle exec doala
Available commands are: face, business_friend
$ bundle exec doala face
(⌒(´・△・`)⌒)
$ for a in $(seq 1 5); do bundle exec doala face; done
(⌒(´・△・`)⌒)
(⌒(´・△・`)⌒)
(⌒(´・△・`)⌒)
(⌒(´・△・`)⌒)
(⌒(´・△・`)⌒)
$ bundle exec doala move
    (⌒(´・△・`)⌒) # Doala moves to the right side of your screen...
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/to0526/doala.

