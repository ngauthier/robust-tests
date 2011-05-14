!SLIDE 
# Robust Tests
### Nick Gauthier
### @ngauthier
### ngauthier@shortmail.com
### [http://github.com/ngauthier/robust-tests](http://github.com/ngauthier/robust-tests)

!SLIDE bullets incremental
# Have you ever ...
* refactored your code
* and had to refactor your tests?

!SLIDE
# Refactoring
## Changing the means but not the ends

!SLIDE
# Robust tests
## Measure the ends but not the means

!SLIDE bullets
# Robust tests
* Define an external API
* Test <b>only</b> against that API

!SLIDE
# HTML is your API

!SLIDE bullets
# Our goal
* Dramatically change the "guts"
* Don't change the tests

!SLIDE
# Tests = Safety net
## Green = your new code works

!SLIDE
# The challenge
## Write tests that don't need to change
## (when you functionality stays the same)

!SLIDE
# Real world experience
## Shortmail.com
### Rails Ajax => Backbone JS
### Without changing the tests

!SLIDE
# The application
## It's a blog!
    @@@ bash
    git clone git://github.com/ngauthier/robust-tests.git
    git co -b 00-initial
    cd robust-tests/blog
    rvm use 1.9.2
    gem install bundler
    bundle
    rake

