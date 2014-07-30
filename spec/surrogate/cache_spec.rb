require "spec_helper"

describe Surrogate::Cache do

  let(:cache){ Surrogate::Cache.new }

  it "has a version number" do
    expect(Surrogate::Cache::VERSION).not_to be nil
  end

  context "#initialize" do
    it "should be creatable" do
      expect(cache).to_not be_nil
    end
  end

  context "#set" do
    it 'should allow you to store a string at a given key' do
      cache.set "yayyay", "Hooray"
    end
    it 'should allow you to store an HTML string at a given key' do
      cache.set "yayhtml", "<html><body><p>:P</p></body></html>"
    end
    it 'should allow you to store a heterogeneous Array at a given key' do
      cache.set "yayarray", ["a", 2]
    end
    it 'should barf on a key that is not a string' do
      expect{
        cache.set :im_not_a_string_im_a_symbol, 2
      }.to raise_error(ArgumentError)
    end
  end

  context "#get" do
    before do
      cache.set "cat", "meow"
    end

    it "should return nil if key does not store object" do
      expect(cache.get("unknown")).to be_nil
    end

    it "should return object if key does store object" do
      expect(cache.get("cat")).to eq("meow")
    end
  end

  context "#ping" do
    it 'should indicate availability'
  end
end
