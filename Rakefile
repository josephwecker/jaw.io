require 'rake/clean'
require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Going to run `bundle install` to install missing gems"
  sh 'bundle install'
  begin
    Bundler.setup(:default, :development)
  rescue Bundler::BundlerError => e
    $stderr.puts e.message
    $stderr.puts "Run `bundle install` to install missing gems"
    exit e.status_code
  end
end

CLOBBER.include('_site')
CLOBBER.include('css')
CLOBBER.include('_layouts')

HAML_CMD = ["haml -t ugly -q -f html5 -E utf-8", ' ']
SASS_CMD = ["sass -r ./_src/lib/sass_addons.rb -t compressed", ' ']
COFFEE_CMD = ["coffee -cp", ' > ']

SOURCES = [
  ['_src/styles',  '.scss', 'css',      '.css',  SASS_CMD],
  ['_src/styles',  '.sass', 'css',      '.css',  SASS_CMD],
  ['_src/layouts', '.haml', '_layouts', '.html', HAML_CMD],
  ['_src/pages',   '.haml', '.',        '.html', HAML_CMD],
  ['_src/scripts', '.coffee','js',      '.js',   COFFEE_CMD]
]

task :default => [:build, :server]

desc "Convert sass/haml into css/html"
task :build

SOURCES.each do |src_root, src_ext, dst_dir, dst_ext, cmd|
  Dir["#{src_root}/**/*#{src_ext}"].each do |src|
    base = File.basename(src, src_ext)
    dest = "#{dst_dir}/#{base}#{dst_ext}"
    desc "Regenerate #{dest} from #{src}"
    file dest => src do sh "#{cmd[0]} #{src} #{cmd[1]} #{dest}" end
    task :build => [dest]
  end
end

desc 'Start server for rapid iteration'
task :server do sh 'jekyll --server --safe --auto' end

desc 'Server to automatically regenerate css if sass changes'
task :css_iterate do sh 'sass -t compressed --watch _src/styles:css' end
