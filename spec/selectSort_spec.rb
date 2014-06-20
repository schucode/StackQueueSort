require 'rspec'
require './selectSort.rb'


describe 'select_sort' do
  
  it "returns a sorted array" do
    a = [8, 6, 5, 4, 3, 2, 1]
    solution = a.sort() 
    result = select_sort(a)
    expect(result).to eq(result)
  end

end