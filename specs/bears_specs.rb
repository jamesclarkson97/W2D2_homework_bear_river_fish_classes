require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bears")
require_relative("../river")


class BearsTest < MiniTest::Test

    def setup()
        @bear = Bears.new("Baloo")
    end

    def test_get_name()
        assert_equal("Baloo", @bear.name())
    end

end