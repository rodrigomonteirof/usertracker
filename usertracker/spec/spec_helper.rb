ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)

ActiveRecord::Migration.maintain_test_schema!
