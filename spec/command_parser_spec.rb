require 'spec_helper'
require './lib/command_parser'
require './lib/robot'
require './lib/table'


describe CommandParser do

  describe '#new' do
    it 'works' do
      robot = Robot.new
      table = Table.new(5,5)
      parser = CommandParser.new(robot, table)
      result = parser.parse('MOVE')
      expect(result).not_to be_nil
    end
  end

  describe '#new' do
    it 'works' do
      robot = Robot.new
      table = Table.new(5,5)
      parser = CommandParser.new(robot, table)
      result = parser.parse('left')
      expect(result).not_to be_nil
    end
  end

  describe '#new' do
    it 'works' do
      robot = Robot.new
      table = Table.new(5,5)
      parser = CommandParser.new(robot, table)
      result = parser.parse('PLACE 2,3,SOUTH')
      expect(result).not_to be_nil
    end
  end

  describe '#parse' do
    it 'works' do
      robot = Robot.new
      table = Table.new(5,5)
      parser = CommandParser.new(robot, table)
      result = parser.parse('ACDEF')
      expect(result).to be_nil
    end
  end

  describe '#new' do
    it 'works' do
      robot = Robot.new
      table = Table.new(5,5)
      parser = CommandParser.new(robot, table)
      result = parser.parse('PLACE 2,3,WRONG')
      expect(result).to be_nil
    end
  end

end
