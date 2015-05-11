RSpec.shared_examples_for 'a garage adder' do

  it "adds a new item" do
    expect {
      subject
    }.to change { dsl.garages.size }.by(1)
  end

  it "adds a new item of type garage" do
    subject

    expect(dsl.garages.first).to be_an_instance_of(GarageInventoryBlockenspiel::Models::Garage)
  end

  context "added item" do

    let(:added_garage)      { subject.first }
    let(:actual_attributes) { { name: added_garage.name, size: added_garage.size, capacity: added_garage.capacity } }

    it "has the expected options set" do
      expect(actual_attributes).to eq(options)
    end

  end

end
