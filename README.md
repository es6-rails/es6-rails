# ES6-Rails with Babel
ES6 (EcmaScript 6) adapter for Rails. Use ES6 in the assets, view files and inline.

## Example app

[es6-rails-example](https://github.com/es6-rails/es6-rails-example)

## Use
Asset pipeline: 
- add ES6 code in `.es6` files

Views:
- add ES6 code in `.es6` files.
- also use ERB code in the `.es6` file

Inline:
- use with: `<%= es6_transform do %> .. es6 code .. <% end %>`
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
Add the es6-rails to your Gemfile:

~~~ruby
gem 'es6-rails'
~~~
