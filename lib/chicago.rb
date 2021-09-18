# frozen_string_literal: true
#this is the envrionment file 
#this is the file where I will require all the other .rb files and gems

require_relative "chicago/version"
require_relative "chicago/scraper"
require_relative "chicago/cli"
require_relative "chicago/activity"
require_relative "chicago/category"


require 'pry'
require 'nokogiri'
require 'open-uri'

module Chicago
  class Error < StandardError; end
  # Your code goes here...
end
