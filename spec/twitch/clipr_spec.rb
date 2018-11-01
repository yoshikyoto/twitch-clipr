RSpec.describe Twitch::Clipr do
  it "has a version number" do
    expect(Twitch::Clipr::VERSION).not_to be nil
  end

  it "can get video URL" do
    client = Twitch::Clipr::Client.new()
    client.get("test")
  end
end
