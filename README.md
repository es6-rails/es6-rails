# Use ES6 in Rails everywhere
ES6 (EcmaScript 2015) adapter for Rails. It transpiles all ES6 code to ES5 (JavaScript) using [ruby-babel-transpiler](https://github.com/babel/ruby-babel-transpiler).

## Write ES6 in:

- assets (supported extensions: `.es6`, `.es6.js`)
- views as remote es6 script. (supported extensions: `.es6`)
- views as inline html

## Example app

[es6-rails-example](https://github.com/es6-rails/es6-rails-example)

## Use
Assets: 
- add ES6 code as `.es6` or `.es6.js` files in `/app/assets/javascripts/`
- or use rails generator: `rails g es6:assets my_file`

ES6 views:
- add ES6 code as `.es6` files in `/app/views/` (you can include `erb` code too)

HTML views:
- add ES6 code in any HTML(ERB) file in `/app/views/` using: `<%= es6_transform do %> .. es6 code .. <% end %>`

E.g.:
```
<script>
  <%= es6_transform do %>
    let square = x => x * x;
    console.log(square(5));
  <% end %>
</script>
```

## Installation

Add the `es6-rails` to your Gemfile:

~~~ruby
gem 'es6-rails'
~~~

## Test

- for testing the gem please run the tests in the [es6-rails-example](https://github.com/es6-rails/es6-rails-example) example application with tests all use cases

## Publish

- `gem build es6-rails.gemspec`
- `gem push es6-rails-0.2.0.gem`
