class RotateRobot

  def initialize(robot, direction)
    @robot = robot
    @direction = direction
  end

  def execute
    if @robot.placed?
      if @direction === 'LEFT'
        @robot.current_position = Position.new(@robot.current_position.x,
                                             @robot.current_position.y,
                                             @robot.current_position.direction_left)
      elsif @direction === 'RIGHT'
        @robot.current_position = Position.new(@robot.current_position.x,
                                               @robot.current_position.y,
                                               @robot.current_position.direction_right)
      end
    else
      puts 'The Robot is not placed yet! Place the robot in the board!'
    end
  end
end
