# -*- encoding: utf-8 -*-

require 'spec_helper'
require './lib/position_robot'

describe Position do

  describe '#new' do
    it 'works' do
      x = 0
      y = 4
      direction = 'SOUTH'
      result = Position.new(x, y, direction)
      expect(result).not_to be_nil
    end
  end

  describe '#go_to' do
    it 'works' do
      x = 0
      y = 4
      direction = 'SOUTH'
      position = Position.new(x, y, direction)
      result = position.go_to(direction)
      expect(result).not_to be_nil
    end
  end

  describe '#go_to' do
    it 'works' do
      x = 0
      y = 4
      direction = 'WRONG'
      position = Position.new(x, y, direction)
      result = position.go_to(direction)
      expect(result).to be_nil
    end
  end


  describe '#direction_left' do
    it 'works' do
      x = 0
      y = 4
      direction = 'SOUTH'
      position = Position.new(x, y, direction)
      result = position.direction_left
      expect(result).not_to be_nil
    end
  end

end
