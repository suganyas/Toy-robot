class CommandParser

  def initialize(robot, table)
    @robot = robot
    @table = table
  end

  #Pattern matching of the user commands to identify valid command
  def parse(command)
    if command =~ /^PLACE\s+\d+\s*,\s*\d+\s*,\s*(NORTH|SOUTH|EAST|WEST)$/i
      command, x, y, direction = command.gsub(',', ' ').split

      PlaceCommand.new(@robot, @table, Position.new(x.to_i, y.to_i, direction))
    elsif command =~ /^MOVE$/i
      MoveCommand.new(@robot, @table)
    elsif command =~ /^LEFT$/i
      RotateRobot.new(@robot, 'LEFT')
    elsif command =~ /^RIGHT$/i
      RotateRobot.new(@robot, 'RIGHT')
    elsif command =~ /^REPORT$/i
      ReportCommand.new(@robot)
    else
      puts "You entered an Invalid command!! "
      return nil
    end
  end

end
