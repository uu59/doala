require "doala"

module Doala
  class CLI
    attr_reader :argv

    FALLBACK_WIDTH = 80

    def initialize(argv)
      @argv = argv
    end

    def run
      unless valid_command?
        $stderr.puts "Not found '#{subcommand}'" 
        usage_exit
      end

      case subcommand
      when "move"
        doala_width = 18
        Doala.move(terminal_width - doala_width) {|s| print s }
        puts
      else
        puts Doala.send(subcommand)
      end
    end

    def subcommand
      argv.first
    end

    def available_commands
      Doala.methods(false)
    end

    def valid_command?
      available_commands.include?(subcommand.to_sym)
    end

    def usage_exit
      $stderr.puts <<TXT
Available commands are: #{available_commands.join(", ")}
TXT
      exit 1
    end

    private

    def terminal_width
      proper_width = [terminal_width_with_stty, terminal_width_with_tput].max
      if proper_width.zero?
        FALLBACK_WIDTH
      else
        proper_width
      end
    end

    def terminal_width_with_tput
      `tput cols 2>/dev/null`.to_i
    end

    def terminal_width_with_stty
      `stty size 2>/dev/null`.split(" ").last.to_i
    end
  end
end
