require "sinatra"
require "sonos"

configure do
    system = Sonos::System.new
    speaker = system.speakers[0]

    set :speaker, speaker
    set :volume, 0
end

get "/volume" do
    speaker = settings.speaker

    '{"volume": "' + speaker.volume.to_s + '"}'
end

get "/volume_incoming" do
    speaker = settings.speaker
    settings.volume = speaker.volume
    speaker.volume = 2

    '{"volume": "' + speaker.volume.to_s + '"}'
end

get "/volume_disconnected" do
    speaker = settings.speaker
    speaker.volume = settings.volume

    '{"volume": "' + speaker.volume.to_s + '"}'
end
