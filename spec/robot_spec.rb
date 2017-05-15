# -*- encoding: utf-8 -*-

require 'spec_helper'
require './lib/robot'
require './lib/position_robot'

describe Robot do

  describe '#new' do
    it 'works' do
      result = Robot.new
      expect(result.current_position).to be_nil
    end
  end

  describe '#report' do
    it 'works' do
      robot = Robot.new
      robot.current_position = Position.new(0,0,'WEST')
      expect { robot.report }.to output('').to_stdout
    end
  end

end
