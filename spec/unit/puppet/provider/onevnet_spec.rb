require 'spec_helper'

provider_class = Puppet::Type.type(:onevnet).provider(:onevnet)
describe provider_class do
  let(:resource ) {
    Puppet::Type::Onevnet.new({
      :name => 'new_cluster',
    })
  }

  let(:provider) {
    @provider = provider_class.new(@resource)
  }

  it 'should exist' do
    @provider
  end
end
