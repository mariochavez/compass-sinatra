require 'susy'
# Require any additional compass plugins here.

# Set this to the root of your project when deployed:
http_path = "/"

# we don't want to create it in sinatra dir, because then sinatra will just serve it, it will not regenerate it each time
#css_dir = "public/css"
http_stylesheets_path = "/css"
sass_dir = "views/css"
images_dir = "public/images"
http_images_path = "/images"
javascripts_dir = "javascripts"

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed
ouput_style = :expanded
environment = :development

relative_assets = true



# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass views/css scss && rm -rf sass && mv scss sass
