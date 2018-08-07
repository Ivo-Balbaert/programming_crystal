require "./spec_helper"

describe Mineral do
  # TODO: Write tests

  # it "works" do
  #   false.should eq(true)
  # end

  it "creates a default mineral" do
    min1 = Mineral::Mineral.new(108)
    min1.id.should eq(108)
    min1.name.should eq ("rock")
    min1.crystal_struct.should eq("unknown")
  end

  it "creates a mineral with parameters" do
    min1 = Mineral::Mineral.new(42, "apatite", "hexagonal")
    min1.id.should eq(42)
    min1.name.should eq ("apatite")
    min1.crystal_struct.should eq("hexagonal")
  end

  it "creates correct csv format" do
    min1 = Mineral::Mineral.new(101, "gold", "cubic")
    min1.to_csv.should eq("101,gold,2.5,cubic")
  end

  it "gold has hardness 2.5" do
    min1 = Mineral::Mineral.new(42, "gold", "cubic")
    min1.hardness.should eq(2.5)
  end

  it "== works for same mineral" do
    min1 = Mineral::Mineral.new(42, "gold", "cubic")
    (min1 == min1).should eq(true)
  end

  it "== works for different mineral" do
    min1 = Mineral::Mineral.new(42, "gold", "cubic")
    min2 = Mineral::Mineral.new(43, "corundum", "trigonal")
    (min1 == min2).should eq(false)
  end

  it "kind_of_crystal works" do
    min1 = Mineral::Mineral.new(42, "gold", "cubic")
    (min1.kind_of_crystal).should eq("cubic")
  end
end
