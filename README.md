# How to setup the build environment?

1. Install `rbenv` (I used MacPorts on OS X)
2. Install Ruby 2.2.3 with `rbenv`
3. Clone this repo and cd into it
4. `gem install bundler` (one-time action)
5. `bundle install --binstubs`
6. `rbenv rehash` (one-time action)

then `bundle exec nanoc` will build the site and

    bundle exec nanoc view -p 4000 > /tmp/luc-j-bourhis-github-io.log 2>&1 &

in `bash` or

    bundle exec nanoc view -p 4000 > /tmp/luc-j-bourhis-github-io.log ^&1 &

in `fish` will run a server to preview the site locally. The French version of the generated site is at the following address:

http://luc-j-bourhis.github.io/blog/fr/ and the English version at

http://luc-j-bourhis.github.io/blog/en/

