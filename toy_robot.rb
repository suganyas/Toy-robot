require_relative 'lib/command_parser'
require_relative 'lib/table'
require_relative 'lib/robot'
require_relative 'lib/position_robot'
require_relative 'lib/move_robot'
require_relative 'lib/rotate_robot'
require_relative 'lib/place_robot'
require_relative 'lib/report_position_robot'

table = Table.new(5, 5)
robot = Robot.new
commander = CommandParser.new(robot, table)

puts 'Your Toy Robot is ready to be placed on 5*5 Table!'

puts 'Enter your commands: '

loop do
  userInput = gets

  unless userInput.nil?

    break if userInput =~ /EXIT/i
    userCommand = commander.parse(userInput)

  # Parser returns nil for an invalid command
    unless userCommand.nil?
      userCommand.execute
    end

  end
end
