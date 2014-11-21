ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

# this is a class
class ActiveSupport::TestCase
  fixtures :all
end
