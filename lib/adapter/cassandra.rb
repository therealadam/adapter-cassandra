require 'adapter'
require 'cassandra/0.7'

module Adapter
  module Cassandra
    def read(key)
      decode(client.get(options[:column_family], key_for(key)))
    end

    def write(key, value)
      client.insert(options[:column_family], key_for(key), encode(value))
    end

    def delete(key)
      read(key).tap { client.remove(options[:column_family], key_for(key)) }
    end

    def clear
      client.clear_keyspace!
    end

    def encode(value)
      case value
      when String
        {"toystore" => value}
      when Hash
        value.inject({}) { |result, (k, v)| result.update(k.to_s => v.to_s) }
      end
    end

    def decode(value)
      return nil if value.empty?
      case value
      when Hash
        value["toystore"] if value.has_key?("toystore")
      else
        value
      end
    end
  end
end

Adapter.define(:cassandra, Adapter::Cassandra)

