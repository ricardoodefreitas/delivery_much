
require 'httparty'
require 'report_builder'
require 'rspec'
require_relative "#{Dir.pwd}/features/support/page_objects.rb"
require_relative "#{Dir.pwd}/features/support/read_file.rb"

World(PageObjects)
World(ReadFile)
