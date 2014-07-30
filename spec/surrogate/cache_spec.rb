require 'spec_helper'

describe Surrogate::Cache do
  it 'has a version number' do
    expect(Surrogate::Cache::VERSION).not_to be nil
  end

  context "#initialize" do
    it "should be creatable" do
      c = Surrogate::Cache.new
      expect(c).to_not be_nil
    end
  end
end
