require './lib/player'

describe Player do
  subject(:Player) {described_class.new("Jack")}

  it "returns players name" do
    expect(subject.name).to eq "Jack"
  end


end 