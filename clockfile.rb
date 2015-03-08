require 'clockwork'
include Clockwork

every(1.day, 'pushnotification.send', :at => '00:20') do
  Dir.chdir("./batch/"){ puts `rails runner -e development test_notification.rb` }
end