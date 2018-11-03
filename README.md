# Twitch::Clipr

## Installation

Add this line to your application's Gemfile:

```ruby
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
client = Twitch::Clipr::Client.new()
download_url = client.get("https://clips.twitch.tv/JazzyTsundereReindeerAMPEnergy")
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yoshikyoto/twitch-clipr.
