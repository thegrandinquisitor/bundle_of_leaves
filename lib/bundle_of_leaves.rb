# encoding: utf-8

require 'bundle_of_leaves/version'

# This module takes a hash and returns the "leaves".
module BundleOfLeaves
  class << self
    def get_leaves(hash)
      get_leaves_helper(hash)
    end

    private

    def translate_item(item)
      if item.nil? || item.is_a?(String) || item.is_a?(Integer)
        nil
      elsif item.is_a? Hash
        item.map { |k, v| v }
      elsif item.is_a? Array
        item
      else
        fail item.inspect
      end
    end

    def get_leaves_helper(item)
      items = translate_item(item)

      if items.nil?
        item
      else
        items.flat_map { |o| get_leaves_helper o }
      end
    end
  end
end
