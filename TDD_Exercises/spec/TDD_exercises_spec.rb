require 'TDD_exercises'

RSpec.describe 'TDD_exercises' do
  describe 'remove_dups' do
    subject(:array) {Array.new(3) {3} }
    it "removes the duplicates" do
      expect(remove_dups(array)).to eq([3])
    end

    it "returns an array" do
      expect(remove_dups(array)).to be_an_instance_of(Array)
    end
  end

  describe 'two_sum' do
    it "returns an array of indices that sum to zero" do
      array = [-1, 0, 2, -2, 1]
      expect(two_sum(array)).to eq([[0, 4], [2, 3]])
    end

    it "returns an empty array if no pair equal zero" do
      array = %w(1 2 3 4 5)
      expect(two_sum(array)).to eq([])
    end
  end


  describe 'my_transpose' do
    it "transposes the array" do
      array = [[0, 1, 2],[3, 4, 5],[6, 7, 8]]
      transpose = [[0, 3, 6],[1, 4, 7],[2, 5, 8]]
      expect(my_transpose(array)).to eq(transpose)
    end
    it "number of rows is equal to number of elements in a column" do
      array = [[0, 1, 2],[3, 4, 5],[6, 7, 8], [9, 10, 11]]
      transpose = [[0, 3, 6, 9],[1, 4, 7, 10],[2, 5, 8, 11]]
      expect(array.length).to eq(my_transpose(array)[0].length)
    end

  end

  describe "stock_picker" do
    it "returns a array of indices of length 2" do
      prices = [35,30,80,90,50,40]
      expect(stock_picker(prices)).to eq([1,3])
    end

    it "returns nil if prices never increase" do
      prices =[90,80,70,60,50,40]
      expect(stock_picker(prices)).to be_nil
    end
  end

end
