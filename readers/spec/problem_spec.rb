require 'problem'

describe 'hello world' do
  it 'test' do
    expect(hello_world).to eq 'Hello world'
  end
end

describe 'reader_pages' do
  it "return array of pages" do
    steps = [2,3]
    total_pages = 11

    expect(reader_pages(steps, total_pages)).to eq [2, 4, 6, 8, 10, 3, 6, 9]
  end
end
