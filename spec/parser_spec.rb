require "parser"
require "RSpec"
require "spec_helper"

RSpec.describe Parser do
  let(:parser) { Parser.new("SPTTest/webserver.log")}
  describe "#sort_by_uniqeness" do
    it "should return a hash" do
    expect(Parser.new("SPTTest/webserver.log").sort_by_uniqeness).to be_a Hash
    end
  end
end

RSpec.describe Parser do
  let(:parser) { Parser.new("SPTTest/webserver.log")}
  describe "#sort_by_occurances" do
    it "should return a hash" do
    expect(Parser.new("SPTTest/webserver.log").sort_by_occurances).to be_a Hash
    end
  end
end


