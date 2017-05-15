# -*- encoding: utf-8 -*-

require 'spec_helper'
require './lib/report_position_robot'
require './lib/robot'


describe ReportCommand do

  describe '#new' do
    it 'works' do
      robot = Robot.new
      result = ReportCommand.new(robot)
      expect(result).not_to be_nil
    end
  end

  describe '#execute' do
    it 'works' do
      robot = Robot.new
      report_command = ReportCommand.new(robot)
      result = report_command.execute
      expect(result).to be_nil
    end
  end

end
