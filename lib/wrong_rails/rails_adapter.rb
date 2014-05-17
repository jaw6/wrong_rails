require 'minitest'
require 'wrong'

module WrongRails
  module RailsTestAdapter
    include Wrong::Assert
    include Wrong::Helpers

    def failure_class
      MiniTest::Assertion
    end

    def aver(valence, explanation = nil, depth = 0)
      self.assertions += 1 # increment minitest's assert count
      super(valence, explanation, depth + 1) # this should also pass any block
    end
  end
end
