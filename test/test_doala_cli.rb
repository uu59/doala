require 'minitest/autorun'
require 'doala/cli'

class DoalaCliTest < Minitest::Test
  def test_subcommand
    cli = Doala::CLI.new(["foo"])
    assert_equal "foo", cli.subcommand
  end

  class TestValidCommand < self
    def test_unknown_command_to_be_false
      cli = Doala::CLI.new(["unknown command"])
      assert_equal false, cli.valid_command?
    end

    def test_known_command_to_be_true
      cli = Doala::CLI.new([Doala.methods(false).first])
      assert_equal true, cli.valid_command?
    end
  end

  class TestRun < self
    def test_invoke_subcommand
      cmd = Doala.methods(false).first
      cli = Doala::CLI.new([cmd])

      assert_respond_to(Doala, cmd)
      capture_io do
        cli.run
      end
    end
  end
end
