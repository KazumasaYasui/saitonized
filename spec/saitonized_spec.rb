RSpec.describe Saitonized do
  it "has a version number" do
    expect(Saitonized::VERSION).not_to be nil
  end

  it "greet test" do
    expect(Saitonized.greet).to eq("それで言うと")
  end
end
