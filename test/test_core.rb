require 'minitest/autorun'
require File::expand_path(File::join(File::dirname(__FILE__),'..','lib/sample-gem.rb'))

class SampleGemTest < Minitest::Test
  def test_init
    assert_equal 'Init complete', SampleGem::Core::init(quiet: true)
  end
  def test_version
    assert_equal '0.0.1', SampleGem::Core::VERSION
  end
end