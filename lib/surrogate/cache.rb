require "surrogate/cache/version"

module Surrogate
  class Cache

    #for now implement the cache in-memory as a hash
    @@cache = Hash.new

    def initialize; end

    def get k
      @@cache[k]
    end

    def set k, v
      unless String === k
        raise ArgumentError.new("Only string keys are supported")
      end
      @@cache[k]=v
    end

    def delete k
      @@cache.delete(k)
    end

    def ping
      raise "Not Implemented Yet"
    end
  end
end
