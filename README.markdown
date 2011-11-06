This app is a simple starting point for those wanting to explore compass with sinatra.

Usage:
------
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


susy is ready:


todo: compass watch auto reloader

todo: write docs