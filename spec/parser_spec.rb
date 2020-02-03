require "parser"
require "RSpec"
require "spec_helper"

RSpec.describe Parser do
  let(:parser) { Parser.new}
  describe "#sort_by_uniqeness" do
    it "should return a hash" do
    expect(Parser.new(@file_path).sort_by_uniqueness).to be_a Hash
    end
  end
end

RSpec.describe Parser do
  let(:parser) { Parser.new}
  describe "#sort_by_occurances" do
    it "should return a hash" do
    expect(Parser.new(@file_path).sort_by_occurances).to be_a Hash
    end
  end
end


