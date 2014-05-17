module WrongRails
end

require 'minitest'
require 'wrong_rails/rails_adapter'
Minitest::Test.send :include, WrongRails::RailsTestAdapter
