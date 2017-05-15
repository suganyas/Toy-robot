# -*- encoding: utf-8 -*-

require 'spec_helper'
require './lib/rotate_robot'
require './lib/robot'
require './lib/position_robot'

describe RotateRobot do

  describe '#execute' do
    it 'works' do
      robot = Robot.new
      direction = 'LEFT'
      robot.current_position = Position.new(0,0,'WEST')
      rotate_robot = RotateRobot.new(robot, direction)
      result = rotate_robot.execute
      expect(result).not_to be_nil
    end
  end

  describe '#execute' do
    it 'works' do
      robot = Robot.new
      direction = 'LEFT'
      rotate_robot = RotateRobot.new(robot, direction)
      result = rotate_robot.execute
      expect(result).to be_nil
    end
  end

end
