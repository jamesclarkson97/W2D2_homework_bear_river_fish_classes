require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../river")
require_relative("../fish")


class RiverTest < MiniTest::Test

    def setup()
        @river = River.new("Water of Leith")
        @fish1 = Fish.new("James")
        @fish2 = Fish.new("Simon")
        @fish3 = Fish.new("Ali")
        @fish4 = Fish.new("Ben")
        @fish5 = Fish.new("x_WETBOI_x")

        @fishes = [@fish1, @fish2, @fish3, @fish4, @fish5]
    end

    def test_get_name()
        assert_equal("Water of Leith", @river.name())
    end

    def test_fish_count()
        assert_equal(0, @river.fish_count().count())
    end

    def test_add_fish()
        assert_equal(1, @river.add_fish(@fish1).count())
    end

    def test_add_fishes()
        total_fish = @river.add_fishes(@river, @fishes)
        assert_equal(5, total_fish.count())
    end

    def test_remove_fish()
        @river.add_fishes(@river, @fishes)
        @river.remove_fish(@fish1)
        total_fish = @river.fish_count.count()
        assert_equal(4, total_fish)
    end

end