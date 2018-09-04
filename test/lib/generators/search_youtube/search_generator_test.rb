require 'test_helper'
require 'generators/search/search_generator'

module SearchYoutube
  class SearchGeneratorTest < Rails::Generators::TestCase
    tests SearchGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    # test "generator runs without errors" do
    #   assert_nothing_raised do
    #     run_generator ["arguments"]
    #   end
    # end
  end
end
