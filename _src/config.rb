activate :blog do |blog|
  #blog.prefix = "a"
  #blog.sources = 'entries'
  blog.sources   = '{category}/{year}-{month}-{day}-{title}.html'
  blog.permalink = '{category}/{title}.html'
  blog.layout    = 'article'
end


###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes

# Reload the browser automatically whenever files change
activate :livereload

# Methods defined in the helpers block are available in templates
helpers do
  def fig_right(url, caption)
    figure(url, 'right', caption)
  end

  def fig_left(url, caption)
    figure(url, 'left', caption)
  end

  def figure(url, classes, caption)
    "<figure class=\"#{classes}\">" +
      "<img class=\"#{classes}\" src=\"#{url}\" alt=\"#{caption}\"\>" +
      "<figcaption>#{caption}</figcaption>" +
    "</figure>".html_safe
  end

  def cite_link(txt, url)
    "<footer>&ndash; <cite><a href=\"#{url}\">#{txt}</a></cite></footer>".html_safe
  end
end

set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'
set :build_dir, 'bld'

set :haml, {:ugly => true, :format => :html5}

set :markdown_engine, :kramdown
set :markdown, :layout_engine => :erb,
               :tables => true,
               :autolink => true,
               :smartypants => true,
               :escape_html => false

activate :directory_indexes

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  #activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
