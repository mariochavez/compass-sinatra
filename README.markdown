This app is a simple starting point for those wanting to explore compass with sinatra.

Quick start:
-----
Clone this project:

    git checkout https://rubycut@github.com/rubycut/compass-sinatra.git

Prepare dependencies:

    bundle install

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


## What is going on

### Compass

Sass basically allows you to write nicer css, it supports variables and some other stuff.

But compass, goes a step further: "The compass core framework is a design-agnostic framework that provides common code that would otherwise be duplicated across other frameworks and extensions."

This means it it gives you sass tools so you don't have to start from scratch on every new project and duplicate code. Most important of all, compass also supports plugins.

I started this project with command:

    compass create . --require susy --using susy --syntax sass --sass-dir views/css

which creates 3 files only:

* config.rb 
* views/css/screen.sass 
* views/css/_base.sass 

_base.sass is where you load susy plugin and set options for plugin.

screen.css is where you define placement of your blocks into grid

### Sinatra full auto

When you start sinatra app, it will generate css on the fily, see app.rb for details. Basically it just load Compass before calling sass method.

### Manual creation

out of this 3 files, it creates *stylesheets/screen.css* every time your run `compass compile` or `compass watch` for example if you want to use it some other projects which are not ruby.

config.rb is compass configuration which is loaded every time, it *remembers* your create command, so you don't have to enter same options again and again.
It also gives you ability to customize your target *stylesheets/screen.css* file.


## Conclusion

As you can see, result of using compass with plugins is one css file only. You can generate it on the fly with sinatra or manually using  `compass compile` or `compass watch`
