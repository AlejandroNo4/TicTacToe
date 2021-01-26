# spec/test_tictactoe.rb
require '../lib/core_game'
require 'stringio'

describe Player do
  let(:first) { Player.new('Jay') }

  context 'it is possible to attach the token to the variable @char' do
    it 'assign the token X to the player' do
      first.char = 'X'
      expect(first.char).to eql('X')
    end
  end

  context 'the name of the player is assigned to the @name variable' do
    it 'check if the name of the player is Jay' do
      expect(first.name).to eql('Jay')
    end
  end
end

describe Spots do
  describe '.valid_char' do
    let(:test_spot) { Spots.new }
    let(:valid_input) { StringIO.new('3') }
    let(:repeated_input) { StringIO.new('6') }

    context "Check if the given input is valid. If it's valid, should NOT be false" do
      it 'valid message check' do
        $stdin = valid_input
        expect(test_spot.valid_char).not_to eql(false)
        $stdin = STDIN
      end
    end

    context 'returns false if the given spot is NOT available. There is already a token there' do
      it 'assign repeated spot' do
        test_spot.choice = 6
        test_spot.acti('O')
        $stdin = repeated_input
        expect(test_spot.acti('X')).to eql(false)
        $stdin = STDIN
      end
    end
  end
end

describe Spots do
  describe '.acti()' do
    let(:test_spot) { Spots.new }

    context 'assign the X token to the validly given spot in the array that will be the board' do
      it 'assign the token X to the chosen spot' do
        test_spot.choice = 4
        test_spot.acti('X')
        expect(test_spot.spots_arr).to eql(['-', '-', '-', 'X', '-', '-', '-', '-', '-'])
      end
    end

    context 'assign the O token to the valid given spot' do
      it 'assign the token O to the chosen spot' do
        test_spot.choice = 6
        test_spot.acti('O')
        expect(test_spot.spots_arr).to eql(['-', '-', '-', '-', '-', 'O', '-', '-', '-'])
      end
    end
  end
end

describe CoreTest do
  describe '.search' do
    let(:test_check) { CoreTest.new }
    let(:collection) { test_check.x_choices }
    context 'search in the winning lines if the collection of the current player has a winning combination' do
      it 'changes the test_res to true if there is a winning combination in x_choices' do
        collection = '17839'
        test_check.search(collection)
        expect(test_check.test_res).to eql(true)
      end
    end
  end
end

describe CoreTest do
  describe '.checker' do
    let(:test_check) { CoreTest.new }

    context 'adds the position 3 to the x_choices. Tests if there is a winning combination calling .search method' do
      it 'WINNER CONDITION TEST' do
        test_check.x_choices = '125'
        test_check.checker('3', 'X')
        expect(test_check.test_res).to eql(true)
      end
    end
    context 'adds the position 9 to the x_choices, it is the final spor, so the test_res should stay as false' do
      it 'TIE CONDITION TEST' do
        test_check.x_choices = '5672'
        test_check.o_choices = '1438'
        test_check.checker('9', 'X')
        expect(test_check.test_res).not_to eql(true)
      end
    end
  end
end
