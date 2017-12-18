# How to setup the build environment?

The prerequisites are:

1. *Ruby 2.x*: I have only tested with ruby 2.3 and 2.4 though. If the ruby coming with your Linux, then consider using `rbenv`. On MacOS, consider using Homebrew or Macports.
2. *Bundler*: `gem install bundler` (with `sudo` unless you are on MacOS using Homebrew)

# How to build the site?

Then you are all set and you just need to clone this repo and cd into it, after which

- `bundle exec nanoc` will build the site;
- `bundle exec nanoc deploy` will deploy the site to the project page associated with this repository (i.e. push to the gh-branch, after which github will update the project pages at the address specified in the `deploy:` section of `nanoc.yaml`;
- the site can be previewed by launching a local server with

        bundle exec nanoc view -p 4000 > /tmp/luc-j-bourhis-github-io.log 2>&1 &
in `bash` or

        bundle exec nanoc view -p 4000 > /tmp/luc-j-bourhis-github-io.log ^&1 &
in `fish`.

# Miscenalleous notes

The site is divided into a French section and an English section, respectively at http://luc-j-bourhis.github.io/blog/fr/ and at http://luc-j-bourhis.github.io/blog/en/.
