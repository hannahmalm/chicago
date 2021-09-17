# frozen_string_literal: true
#this is the envrionment file 

require_relative "chicago/version"
require_relative "chicago/cli"
# require_relative "chicago/activity"
# require_relative "chicago/scraper"

require 'pry'
require 'nokogiri'
require 'open-uri'

module Chicago
  class Error < StandardError; end
  # Your code goes here...
end
