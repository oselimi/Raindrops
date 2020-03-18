RSpec.describe Raindrops do
  it "has a version number" do
    expect(Raindrops::VERSION).not_to be nil
  end

  it "prints Pling for number 3" do
    rnd = Raindrops::Convert_to_num.new(3)
    expect(rnd.convert).to eq('Pling')
  end

  it "prints Plang for number 5 " do
    rnd = Raindrops::Convert_to_num.new(5)
    expect(rnd.convert).to eq('Plang')
  end

  it "prints Plong for number 7"do
    rnd = Raindrops::Convert_to_num.new(7)
    expect(rnd.convert).to eq('Plong')
  end

  it "print the number as a string if it doesn`t have number 3,5,7" do
    rnd = Raindrops::Convert_to_num.new('55')
    expect(rnd.convert).to eq('55')
  end
end
