require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bears")
require_relative("../river")
require_relative("../fish")


class BearsTest < MiniTest::Test

    def setup()
        @bear = Bears.new("Baloo")
        @river = River.new("Water of Leith")
        @fish1 = Fish.new("James")
        @fish2 = Fish.new("Simon")
        @fish3 = Fish.new("Ali")
        @fish4 = Fish.new("Ben")
        @fish5 = Fish.new("x_WETBOI_x")

        @fishes = [@fish1, @fish2, @fish3, @fish4, @fish5]
    end

    def test_get_name()
        assert_equal("Baloo", @bear.name())
    end

    def test_bear_hunger_scale()
        assert_equal(0, @bear.bear_hunger_scale().count())
    end

    def test_take_fish()
        @river.add_fishes(@river, @fishes)
        @river.remove_fish(@fish1)
        @bear.take_fish(@fish1)
        assert_equal(1, @bear.bear_hunger_scale().count())
    end

end