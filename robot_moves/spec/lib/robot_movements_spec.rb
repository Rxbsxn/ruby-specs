require 'robot_movement'

describe RobotMoves do
  let(:robot_movement) { RobotMoves.new(2) }
  describe '#amount_of_unique_ways' do
    pending 'returns correct amout of unique ways for robot in grid' do
      expect(robot_movement.amount_of_unique_ways).to eql(4)
    end
  end
end
