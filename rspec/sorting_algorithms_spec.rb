require 'sorting_algorithms'

describe '.bubble_sort' do
  arr = [3, 1, 5, 9, 10, 50, 2]
  it 'should return array by ascending order' do
    expect(arr.bubble_sort).to eq(arr.sort)
  end
end

describe '.insertion_sort' do
  arr = [3, 1, 5, 9, 10, 50, 2]
  it 'should return array by ascending order' do
    expect(arr.insertion_sort).to eq(arr.sort)
  end
end

describe '.selection_sort' do
  arr = [3, 1, 5, 9, 10, 50, 2]
  it 'should return array by ascending order' do
    expect(arr.selection_sort).to eq(arr.sort)
  end
end
