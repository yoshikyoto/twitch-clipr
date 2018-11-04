RSpec.describe Twitch::Clipr do
  it "has a version number" do
    expect(Twitch::Clipr::VERSION).not_to be nil
  end

  it "can get video URL" do
    # 実際にAPIを叩くテストです
    client = Twitch::Clipr::Client.new()
    clip_url = "https://clips.twitch.tv/JazzyTsundereReindeerAMPEnergy"
    expected_url = "https://clips-media-assets2.twitch.tv/AT-cm%7C333640464.mp4"
    download_url = client.get(clip_url)
    expect(download_url).to eq(expected_url)
    client.download(download_url, "resource/test.mp4")
  end
end
