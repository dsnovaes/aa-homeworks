require "item"

describe Item do
  subject(:item) do
    Item.new("rubies", 20)
  end

  it "initializes with a name and weight" do
    expect(item.name).to eq("rubies")
    expect(item.weight).to eq(20)
  end
end