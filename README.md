Learn How to Program
======================

Models the *learnhowtoprogram.com* website used by Epicodus web development
school.

Installation
------------

Upon cloning of this project onto your local system, navigate via the
command-line to the project folder and run the included Gemfile. Below
is a list of gems included in the Gemfile grouped by execution environment:

```ruby
TEST / DEVELOPMENT / PRODUCTION:
  rails
  pg
  sass-rails
  uglifier
  coffee-rails
  jquery-rails
  turbolinks
  bootstrap-sass

TEST / DEVELOPMENT:
  rspec-rails

DEVELOPMENT:
  byebug
  web-console
  spring
  quiet-assets

TEST:
  shoulda-matchers
  capybara
```

If you want to run the included Gemfile, enter the following statements into
the command line:
```ruby
gem install bundler
bundle
```

Before the application can run, the user must have a version of
a Postgres database installed on their system, and running in an active
session. At the time of creation of this application, Postgres 9.4 was
used. To create the necessary database schema, enter the following Rake
statements into the command line:
```rake
rake db:create
rake db:migrate
rake db:test:prepare
```

At the time of initial creation of this application, Ruby
version 2.2.0 was used along with Ruby on Rails 4.2.0.

Database Schema
-----

The following database schema was used for this application:

```
DATABASES:
  learn_how_to_program_development
  learn_how_to_program_test

TABLES:
  lessons
    id (integer PRIMARY KEY)
    name (varchar)
    description (varchar)
    created_at (timestamp)
    updated_at (timestamp)

  sections
    id (integer PRIMARY KEY)
    name (varchar)
    lesson_id (integer)
    created_at (timestamp)
    updated_at (timestamp)

  topics
    id (integer PRIMARY KEY)
    name (varchar)
    topic_text (text)
    section_id (integer)
    sort_id (integer)
    created_at (timestamp)
    updated_at (timestamp)
```

Usage
-----

Upon completion of the above steps in the Installation section, open
two separate terminal windows to run active sessions of ```rails server```
and ```postgres```, respectively. Next, open up your preferred web browser
and enter the following address:

```url
localhost:3000/
```

The initial home page displays a Table of Contents listing the included
*lessons* within the mock school curriculum. Clicking on *Create a New Lesson*
allows for new lessons to be added to the application. Any lesson can be
clicked on to reveal a list of contained *sections* within that lesson.
Of note, these sections correspond to areas of study for a given week
within the Epicodus program. Finally, to show and manage the individual
daily *topics* under each section, click on the desired section for a
list of topics. As is the case with managing lessons, new sections and
topics can be added by clicking on the appropriate 'Add new ...' link.
Furthermore, lessons, sections and topics can be edited or deleted by
clicking on the respective Edit and Delete links.

Known Bugs
----------

None as of 2015-03-18.

Author
------

Andy Uppendahl

License
-------

MIT license.
