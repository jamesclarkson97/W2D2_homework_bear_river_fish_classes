require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../fish")


class FishTest < MiniTest::Test

    def setup()
        @fish1 = Fish.new("James")
        @fish2 = Fish.new("Simon")
        @fish3 = Fish.new("Ali")
        @fish4 = Fish.new("Ben")
        @fish5 = Fish.new("x_WETBOI_x")
    end

    def test_get_name()
        assert_equal("James", @fish1.name())
    end

end