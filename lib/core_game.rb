class CoreTest
  attr_accessor :test_res
  def initialize
    @lines = [/[1, 2, 3]/, /[4, 5, 6]/, /[7, 8, 9]/,
              /[1, 4, 7]/, /[2, 5, 8]/, /[3, 6, 9]/,
              /[1, 5, 9]/, /[3, 5, 7]/]
    @test_res = false
    @x_choices = ''
    @o_choices = ''
  end

  def search(collection)
    @test_res = true if @lines.any? { |r| collection.scan(r).length == 3 }
  end

  def checker(number, played_by)
    @x_choices << number if played_by == 'X'
    @o_choices << number if played_by == 'O'
    if @x_choices.length > 3 && played_by == 'X'
      search(@x_choices)
    elsif @o_choices.length > 3
      search(@o_choices)
    end
  end
end