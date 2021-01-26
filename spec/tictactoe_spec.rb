# spec/test_tictactoe.rb
require '../lib/core_game'
require '../bin/main'
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

describe Start do
  describe '.switch' do
    let(:plyr_x) { Player.new('Jay') }
    let(:plyr_o) { Player.new('Joe') }
    let(:test_game) { Start.new(plyr_x, plyr_o) }
    let(:jay_won) { winner_msg('Jay') }

    context 'triggers the winning message with the current player' do
      it 'returns the winning message' do
        test_game.check_if_win.test_res = true
        expect(test_game.switch).to eql(jay_won)
      end
    end

    context 'triggers the tie message after nine rounds' do
      it 'puts tie_message' do
        test_game.i = 9
        expect(test_game.switch).to eql(tie_message)
      end
    end
  end
end

describe Spots do
  describe '.valid_char' do
    let(:test_spot) { Spots.new }
    let(:invalid_input) { StringIO.new('S') }
    let(:repeated_input) { StringIO.new('6') }

    context 'returns the message wrong_input if the input is invalid' do
      it 'invalid message' do
        $stdin = invalid_input
        expect(test_spot.valid_char).to eql(wrong_input)
        $stdin = STDIN
      end
    end

    context 'returns false if the given spot is not available' do
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

  describe '.checker' do
    let(:test_check) { CoreTest.new }

    context 'adds the given position to the collection, and runs the .search method' do
      it 'adds the position 3 to the x_choices' do
        test_check.x_choices = '125'
        test_check.checker('3', 'X')
        expect(test_check.test_res).to eql(true)
      end
    end
  end
end
