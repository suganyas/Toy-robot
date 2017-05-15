class Robot

  attr_accessor :current_position

  def initialize
    @current_position = nil
  end

  def report
    if !placed?
      'The Robot is not placed yet! Place the robot in the board!'
    else
      [@current_position.x, @current_position.y, @current_position.direction].join(',')
    end
  end

  def placed?
    !@current_position.nil?
  end
end
