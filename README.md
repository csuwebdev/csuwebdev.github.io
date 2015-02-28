# Chico State Web Dev and Design Club website [![Build Status](https://travis-ci.org/csuwebdev/csuwebdev.github.io.svg?branch=jekyll)](https://travis-ci.org/csuwebdev/csuwebdev.github.io)

This site is generated with [Jekyll](http://jekyllrb.com/) and uses [Travis CI](https://travis-ci.org/csuwebdev/csuwebdev.github.io) for continuous integration and deployment.

## Site structure

#### Posts and Collections

To add new content with Jekyll, you create a new file in one of the collections folders (_posts, _events, _meetings, and _quizzes). Content can be written in markdown or HTML. You can generate a new post in the _posts folder by typing

````
$ rake new title="post title"
````
#### SASS

The site includes the SASS version of Twitter Bootstrap. The _sass directory contains most of the files. They are imported by css/main.scss. This file will be compiled to CSS when the site is build.

## How to Contribute

1. Fork this repository.
2. Make some changes. Keep your commits small.
3. Submit a pull request.

You can avoid triggering a new build for small changes, such as editing the README by adding [ci skip] or [skip ci] to your commit message.

For information about the Markdown syntax, refer to [this](http://kramdown.gettalong.org/syntax.html).
