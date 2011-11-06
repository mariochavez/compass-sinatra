This app is a simple starting point for those wanting to explore compass with sinatra.

Quick start:
-----
Clone this project:

    git checkout https://rubycut@github.com/rubycut/compass-sinatra.git

Prepare dependencies:

    bundle install

In separate window, run compass which will automatically rebuild your css:

    compass watch

Run this app:

    rackup

Point your browser to http://localhost:9292/

Start playing, important files to play with:

* views/index.haml
* views/css/_base.sass    <--- Grid options
* views/css/screen.sass    <--- Layout


Susy
----
This repo bundles [susy]("http://susy.oddbird.net/") plugin together with compass. 


What is going on
----
Sass basibally allows you to write nicer css, it supports variable and some other stuff.

But compass, goes a step further: "The compass core framework is a design-agnostic framework that provides common code that would otherwise be duplicated across other frameworks and extensions."

This means it it gives you sass tools so you don't have to start from scratch on every new project and duplicate code. Most important of all, compass also supports plugins.


