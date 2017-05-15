require 'spec_helper'
require './lib/place_robot'
require './lib/robot'
require './lib/table'
require './lib/position_robot'

describe PlaceCommand do

  describe '#new' do
    it 'works' do
      robot = Robot.new
      table = Table.new(5,5)
      position = Position.new(0,0,'SOUTH')
      result = PlaceCommand.new(robot, table, position)
      expect(result).not_to be_nil
    end
  end

  describe '#execute' do
    it 'works' do
      robot = Robot.new
      table = Table.new(5,5)
      position = Position.new(0,0,'SOUTH')
      place_command = PlaceCommand.new(robot, table, position)
      result = place_command.execute
      expect(result).not_to be_nil
    end
  end

  describe '#execute' do
    it 'works' do
      robot = Robot.new
      table = Table.new(5,5)
      position = Position.new(10,6,'SOUTH')
      place_command = PlaceCommand.new(robot, table, position)
      result = place_command.execute
      expect(result).to be_nil
    end
  end

end
