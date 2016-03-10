require 'slack-ruby-client'
require 'dotenv'
Dotenv.load

Slack.configure do |config|
  config.token = ENV['TOKEN']
end

client = Slack::RealTime::Client.new
client.on :message do |data|
  puts data
end
client.start!
