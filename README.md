# noVNC Rails gem

This gem is an attempt to make noVNC easy to install in a Rails application.

So far, it's fairly basic. There is a Rake task to import code from a
checked out git directory to make it easier to import updates from the
noVNC project.

## Installation

Add this to your `Gemfile`:
```ruby
gem 'noVNC', :git => "git://github.com/davidw/noVNCgem.git"
```

Enable minimal working set by adding the following to the `app/assets/javascripts/application.js`:
```js
//= require noVNC-min
```

or load the whole suite:
```js
//= require noVNC-all
```

The original noVNC is available here: http://kanaka.github.com/noVNC/
