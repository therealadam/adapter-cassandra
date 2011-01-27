require 'helper'
require 'adapter/cassandra'

describe "Cassandra adapter" do
  before do
    @client = Cassandra.new("Toystore")
    @adapter = Adapter[:cassandra].new(@client, :column_family => :boom)
    @adapter.clear
  end

  let(:adapter) { @adapter }
  let(:client)  { @client }

  it_should_behave_like 'a marshaled adapter'

end
