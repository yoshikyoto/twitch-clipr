require "faraday"
require "json"

module Twitch
  module Clipr
    class Client
      def initialize
        @base_url = "https://clipr.xyz"
      end

      def get(clip_url)
        clipr = Faraday.new(@base_url)
        response = clipr.post("/api/grabclip", {clip_url: clip_url})
        json = JSON.parse(response.body)
        json["download_url"]
      end
    end
  end
end
