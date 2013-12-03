require 'rubygems'

if File.exists?(ENV['BUNDLE_GEMFILE'])
  ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../../../Gemfile', __FILE__)
  require 'bundler'
  Bundler.setup
end

$LOAD_PATH.unshift File.expand_path('../../../../lib', __FILE__)
