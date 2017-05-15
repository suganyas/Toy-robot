require 'spec_helper'
require './lib/move_robot'
require './lib/robot'
require './lib/table'
require './lib/position_robot'


describe MoveCommand do

  describe '#new' do
    it 'works' do
      robot = Robot.new
      table = Table.new(5,5)
      result = MoveCommand.new(robot, table)
      expect(result).not_to be_nil
    end
  end

  describe '#execute' do
    it 'works' do
      robot = Robot.new
      table = Table.new(5,5)
      robot.current_position = Position.new(0,0,'SOUTH')
      result = MoveCommand.new(robot, table)
      expect(result).not_to be_nil
    end
  end

end
