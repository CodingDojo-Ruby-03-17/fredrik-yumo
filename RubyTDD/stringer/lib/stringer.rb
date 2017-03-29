require "stringer/version"

module Stringer
  # adds a space between each given string
  def self.spacify *strings
    string = ""
    strings.each_with_index do |s, i|
      string += s + " " unless i == strings.length - 1
    end
    string + strings.last
  end

  # shortens a given string if its length is more than the given maximum
  def self.minify(string, max)
    if string.length > max
      string.slice!(max..string.length)
      string += "..."
    end
    return string
  end

  # replaces each instance of a given word in a string with the replacement provided
  def self.replacify(string, replaced, replacement)
    string.sub(replaced, replacement)
  end

  # adds each word in a given string into an array
  def self.tokenize(string)
    array = Array.new
    array = string.split(" ")
  end

  # removes each instance of a given word from a given string
  def self.removify(string, removed)
    string.sub(removed + " ", "")
  end
end
