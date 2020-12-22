# frozen_string_literal: true

require "key_mirror/version"

module KeyMirror
  class ArgumentError < StandardError
    def initialize
      super("argument must be a Hash")
    end
  end

  class KeyError < StandardError
    def initialize
      super("key can only be symbol or string")
    end
  end

  def self.call(hash)
    raise KeyMirror::ArgumentError.new unless hash.is_a?(Hash)

    hash.each do |key, _|
      raise KeyMirror::KeyError unless key.is_a?(String) || key.is_a?(Symbol)

      hash[key] = key.to_s
    end

    hash
  end
end
