# Twitch::Clipr

## Installation

Add this line to your application's Gemfile:

```
gem 'twitch-clipr'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install twitch-clipr
```

## Usage

```
require "twitch-clipr"

client = Twitch::Clipr::Client.new()
download_url = client.get("https://clips.twitch.tv/JazzyTsundereReindeerAMPEnergy")
client.download(download_url, "/tmp/clip.mp4")
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yoshikyoto/twitch-clipr.
