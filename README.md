# noVNC Rails gem

This gem packages noVNC for super easy usage in a Rails application.

## Installation

Add this to your `Gemfile`:
```ruby
gem 'novnc-rails', github: 'MOZGIII/novnc-rails'
```

Enable minimal working set by adding the following to the `app/assets/javascripts/application.js`:
```js
//= require noVNC-min
```

or load the whole suite:
```js
//= require noVNC-all
```

## Credits

The original noVNC is available here: http://kanaka.github.com/noVNC/

This gem as originally developed by David N. Welton: https://github.com/davidw/noVNCgem

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
