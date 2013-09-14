require 'bundle_of_leaves'
require 'json'

describe BundleOfLeaves, t: true do
  before :all do
    filename = File.expand_path('data.json', File.dirname(__FILE__))
    @file = IO.read(filename)
  end

  it 'should parse the JSON file correctly' do
    hash = JSON.parse(@file, { symbolize_names: true })
    hash.is_a? Hash
  end

  it 'should return all the leaves' do
    hash = JSON.parse(@file, { symbolize_names: true })
    leaves = BundleOfLeaves.get_leaves hash
    leaves.should eql [
      'string0',
      'string1',
      0,
      1,
      'string3',
      'string4',
      2,
      3,
      4,
      5,
      6,
      7,
      'string5',
      'string6',
      8,
      9,
      'string7',
      'string8',
      10,
      11,
      12,
      13,
      14,
      15,
    ]
  end
end
