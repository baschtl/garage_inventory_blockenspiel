require 'spec_helper'
require 'shared_examples_for_a_garage_adder'

RSpec.describe GarageInventoryBlockenspiel::Dsl do

  describe '#garage' do

    let(:dsl)     { described_class.new }
    let(:options) { { name: 'my_garage', size: 10, capacity: 3 } }

    it_behaves_like 'a garage adder' do
      subject { dsl.garage(options) }
    end

  end

end
