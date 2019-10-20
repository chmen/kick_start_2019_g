require 'problem'

describe 'hello world' do
  it 'test' do
    expect(hello_world).to eq 'Hello world'
  end
end

describe 'xor' do
  it 'return binary xor of 2 numbers' do

    expect(xor(5,3)).to eq 6
  end

  it 'return binary xor of 2 numbers' do

    expect(xor(100,100)).to eq 0
  end
end



describe 'examine_universe' do
  it 'return max xor value' do
  edge_value = 27
  array = [8, 2, 4]

  expect(examine_universe(edge_value, array)).to eq 12
  end

  it 'return -1 if no max xor' do
    edge_value = 2
    array = [5, 5, 1, 5, 1, 0]

    expect(examine_universe(edge_value, array)).to eq -1
  end

  it 'return 100 if xor_sum 0' do
    edge_value = 0
    array = [100]

    expect(examine_universe(edge_value, array)).to eq 100
  end
end


describe 'xor_sum(k, array)' do
  it 'return sum of xor numbers' do
    array = [8,2,4]
    k = 12

    expect(xor_sum(k, array)).to eq 26
  end

  it 'return sum of xor numbers' do
    array = [100]
    k = 100

    expect(xor_sum(k, array)).to eq 0
  end
end


