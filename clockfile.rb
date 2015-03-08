require 'clockwork'
include Clockwork

every(1.day, 'reminders.send', :at => '00:00') do
  puts `rails runner -e development batch/test_notification.rb`
end