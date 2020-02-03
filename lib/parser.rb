class Parser
  def initialize(file_path)
    @file_path = File.exist?(file_path) ? file_path : "File path doesn't exist"
    # @file_path = file_path
    @occurances = Hash.new(0)
    @uniqueness = Hash.new {|h,k| h[k]=[]}
  end

  def call
    File.open(@file_path).each do |line|
      @occurances[line.split[0].to_sym] += 1
      a = {
        url: line.split[0],
        ip: line.split[1]
      }
    end
  end

  def sort_by_occurances
    @occurances.sort_by { |_, value| -value }.to_h
  end

  def sort_by_uniqeness
    File.open(@file_path).each do |line|
    @uniqueness[line.split[0].to_sym] << line.split[1]
  end
    @uniqueness.each { |key, value| @uniqueness[key] = value.uniq.count }.to_h
    @uniqueness.sort_by { |key, value| -value }.to_h
  end
end

parser = Parser.new("webserver.log")
parser.call

puts '*************************************************************************'
parser.sort_by_occurances.each do |key, value|
  puts "The page #{key} has been viewed #{value} times."
end
parser.sort_by_uniqeness.each do |key, value|
  puts "The unique views of the page #{key} is #{value} times."
end
puts '*************************************************************************'
