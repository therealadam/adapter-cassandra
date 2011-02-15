require 'helper'
require 'adapter/cassandra'

describe "Cassandra adapter" do

  before do
    @client = Cassandra.new("Toystore")
    @adapter = Adapter[:cassandra].new(@client, :column_family => :Boom)
    @adapter.clear
  end

  let(:adapter) { @adapter }
  let(:client)  { @client }

  it_behaves_like "an adapter"

end
