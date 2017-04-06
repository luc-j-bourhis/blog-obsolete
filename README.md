# How to setup the build environment?

1. Install `rbenv` (I used MacPorts on OS X)
2. Install Ruby 2.2.3 with `rbenv`
3. Clone this repo and cd into it
4. `gem install bundler` (one-time action)
5. `bundle install --binstubs`
6. `rbenv rehash` (one-time action)

then `bundle exec nanoc` will build the site, `bundle exec nanoc deploy` will deploy the site to the project page associated with this repository (i.e. push to the gh-branch, after which github will update the project pages at http://luc-j-bourhis.github.io/blog/) and

    bundle exec nanoc view -p 4000 > /tmp/luc-j-bourhis-github-io.log 2>&1 &

in `bash` or

    bundle exec nanoc view -p 4000 > /tmp/luc-j-bourhis-github-io.log ^&1 &

in `fish` will run a server to preview the site locally. The site has is divided into a French section and an English section, respectively at http://luc-j-bourhis.github.io/blog/fr/ and at http://luc-j-bourhis.github.io/blog/en/.
