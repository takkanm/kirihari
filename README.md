# Kirihari

experimental

## Installation

Add this line to your application's Gemfile:

    gem 'kirihari'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kirihari

## Usage

```
$ cat foo.yaml
foo: '<%= bar %>'
$ bundle exec irb
irb(main):001:0> require 'kirihari'
=> true
irb(main):002:0> kirihari = Kirihari.new('./foo.yaml', bar: 1)
=> #<Kirihari:0x007fe25619c180 @template_hash={"foo"=>"<%= bar %>"}, @binding_hash={:bar=>1}>
irb(main):004:0> kirihari['foo']
=> "1"
irb(main):005:0> kirihari = Kirihari.new({x: {y: '<%= z %>'}}, z: 10)
=> #<Kirihari:0x007fe254a21460 @template_hash={:x=>{:y=>"<%= z %>"}}, @binding_hash={:z=>10}>
irb(main):006:0> kirihari[:x][:y]
=> "10"
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/kirihari/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
