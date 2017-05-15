# -*- encoding: utf-8 -*-

require 'spec_helper'
require './lib/table'
require './lib/position_robot'


describe Table do

  describe '#new' do
    it 'works' do
      length = 5
      width = 6
      result = Table.new(length, width)
      expect(result).not_to be_nil
    end
  end

  describe '#position_valid?' do
    it 'works' do
      length = 5
      width = 5
      table = Table.new(length, width)
      position = Position.new(10,10,'EAST')
      result = table.position_valid?(position)
      expect(result).to be_falsey
    end
  end

  describe '#position_valid?' do
    it 'works' do
      length = 5
      width = 5
      table = Table.new(length, width)
      position = Position.new(1,1,'EAST')
      result = table.position_valid?(position)
      expect(result).to be_truthy
    end
  end

end
