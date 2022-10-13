require_relative '../lib/00_dark_trader'

describe 'the is_multiple_of_3_or_5? method' do
  it 'should return TRUE when an integer is a multiple of 3 or 5' do
    expect(is_multiple_of_3_or_5?(3)).to(eq(true))
    expect(is_multiple_of_3_or_5?(5)).to(eq(true))
    expect(is_multiple_of_3_or_5?(51)).to(eq(true))
    expect(is_multiple_of_3_or_5?(45)).to(eq(true))
  end

  it 'should return FALSE when an integer is NOT a multiple of 3 or 5' do
    expect(is_multiple_of_3_or_5?(2)).to(eq(false))
    expect(is_multiple_of_3_or_5?(4)).to(eq(false))
    expect(is_multiple_of_3_or_5?(7)).to(eq(false))
    expect(is_multiple_of_3_or_5?(8)).to(eq(false))
  end
end

describe 'the sum_of_3_or_5_multiple' do
  it 'should return the sum of multiple of 3 or 5' do
    expect(sum_of_multiple_of_3_or_5?(10)).to(eq(23))
    expect(sum_of_multiple_of_3_or_5?(11)).to(eq(33))
  end

  it 'should return the 0 for final number <= 3' do
    expect(sum_of_multiple_of_3_or_5?(0)).to(eq(0))
    expect(sum_of_multiple_of_3_or_5?(3)).to(eq(0))
  end

  describe 'should notify if the input value is incorrect' do
    it 'should notify if the input value is a negative number' do
      expect(sum_of_multiple_of_3_or_5?(-1)).to(eq('Yo ! Je ne prends que les entiers naturels. TG'))
    end

    it 'should notify if the input value is a decimal number' do
      expect(sum_of_multiple_of_3_or_5?(1.23)).to(eq('Yo ! Je ne prends que les entiers naturels. TG'))
    end

    it 'should notify if the input value is a string' do
      expect(sum_of_multiple_of_3_or_5?('numero')).to(eq('Yo ! Je ne prends que les entiers naturels. TG'))
    end
  end
end
