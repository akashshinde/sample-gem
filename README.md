# SampleGem

Demonstration Gem - showing what a well formed gem looks like.

## Creating a gem

* Make sure you have Bundler installed.
* `bundle gem [YourGemName]`
  * Note: Don't use hyphens in your name if possible - the folder structure becomes more complicated.
* Edit `./[YourGemName].gemspec`
  * Adjust relevant fields.
  * You may want to change this line `spec.files` to just include a static array of files (use relative path references).
* My experience has been you have to edit line #4 to add a "./" in front of the file:
  * require './lib/version.rb'
* Cf. https://quickleft.com/blog/engineering-lunch-series-step-by-step-guide-to-building-your-first-ruby-gem/

## Installing the Gem into a new project

Here we use an existing sample gem project to demonstrate how to include a gem in your project.

Add this line to your application's Gemfile:

```ruby
gem 'sample-gem', :git => 'git://github.com/learningtapestry/sample-gem'
```

And then execute:

    $ bundle install

## Usage

```ruby
require 'rubygems'
require 'bundler/setup'
require 'sample-gem'
SampleGem::Core::init
# => "Init complete"
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/sample-gem/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
