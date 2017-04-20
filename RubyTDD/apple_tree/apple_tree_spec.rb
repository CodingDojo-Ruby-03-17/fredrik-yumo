require_relative 'apple_tree'
RSpec.describe AppleTree do
  before(:each) do
    @apple_tree = AppleTree.new
  end

  it 'has a getter and setter for age attribute' do
    expect(@apple_tree.age).to eq(0)
    @apple_tree.age = 4
    expect(@apple_tree.age).to eq(4)
  end

  it 'cannot set the height attribute' do
    expect{@apple_tree.height = 2}.to raise_error(NoMethodError)
  end

  it 'cannot set the apple count attribute' do
    expect{@apple_tree.apple_count = 6}.to raise_error(NoMethodError)
  end

  it 'has a method pick_apples that removes all apples from the tree' do
    @apple_tree.pick_apples
    expect(@apple_tree.apple_count).to eq(0)
  end
  
  context 'has a method year_gone_bye' do
    it 'increases height by 10% every year' do
      @apple_tree.year_gone_bye
      expect(@apple_tree.height).to eq(1.1)
    end
    it 'increases age by 1 every year' do
      @apple_tree.year_gone_bye
      expect(@apple_tree.age).to eq(1)
    end
  end

  context 'age is below 3' do
    it 'should not grow apples' do
      while @apple_tree.age < 3
        @apple_tree.year_gone_bye
      end
      expect(@apple_tree.apple_count).to eq(0)
    end
  end

  context 'age is between 3 and 7' do
    it 'should grow 2 apples every year' do
      for i in 0..7
        @apple_tree.year_gone_bye
      end
      expect(@apple_tree.apple_count).to eq(10)
    end
  end

  context 'age is above 10' do
    it 'should not grow apples' do
      for i in 0..12
        @apple_tree.year_gone_bye
      end
      expect(@apple_tree.apple_count).to eq(16)
    end
  end
end
