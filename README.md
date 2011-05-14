# Robust Tests


* Refactor your code while passing tests
* High coverage + low coupling
* HTML is your only true API


# I do
* Post index
* Create form
* Write integration tests
* Check coverage w/ cover\_me
* create via ajax - tests still pass

# We do
* add delete button and test
* check coverage
* delete via ajax

# You do

## Sorting (Easy)
* sort by name and sort by date - html with tests
* refactor to do it with ajax

## Editing (Medium)
* Make an edit page to update a post
* Then make it a pop-out form (on the index page) that updates via ajax ... and don't change the tests!

## Filesystem store (hard)
* instead of ActiveRecord and Sqlite, store the posts on the filesystem with YAML ... and don't change the tests!

## Replace Rails (expert)
* Use a different web framework (like sinatra, or even nodejs!)
* Point selenium to a local port
* Get the tests to pass without changing them
