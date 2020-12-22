RSpec.describe KeyMirror do
  it "has a version number" do
    expect(KeyMirror::VERSION).not_to be nil
  end

  describe "#call" do
    let(:null_hash) { { a: nil, b: nil, c: nil } }

    it "mirrors the key as string" do
      KeyMirror.(null_hash).each do |key, val|
        expect(val).to eq(key.to_s)
      end
    end

    it "overrides the value with stringified key" do
      KeyMirror.({ key: 'value', g: 'new_value', 'HELLO' => 'hello'}).each do |key, val|
        expect(val).to eq(key.to_s)
      end
    end

    it "works for empty hash" do
      empty_hash = {}
      expect(KeyMirror.(empty_hash)).to eq(empty_hash)
    end

    it "raises error if key is not string or symbol" do
      object_hash = { 1 => '1', Object.new => nil, symbol: 'string' }

      expect { KeyMirror.(object_hash) }.to raise_error(KeyMirror::KeyError)
    end

    it "raises error if passed object is not Hash" do
      expect { KeyMirror.(Object.new) }.to raise_error(KeyMirror::ArgumentError)
    end
  end
end
