require 'string_builder'

RSpec.describe StringBuilder do
    it "builds a string with added word" do
        stringbuilder = StringBuilder.new
        result = stringbuilder.add("word")
        expect(result).to eq "word"
    end
    it "returns size of string when calling size method" do
        stringbuilder = StringBuilder.new
        stringbuilder.add("word")
        result = stringbuilder.size
        expect(result).to eq 4
    end
end
