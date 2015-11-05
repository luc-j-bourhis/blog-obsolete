# How to setup the build environment?

1. Install `rbenv` (I used MacPorts on OS X)
2. Install Ruby 2.2.3 with `rbenv`
3. Clone this repo and cd into it
4. `gem install bundler` (one-time action)
5. `undle install --binstubs`
6. `rbenv rehash` (one-time action)

then `nanoc` will build the site.

