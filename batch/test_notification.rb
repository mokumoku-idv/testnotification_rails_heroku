class TestNotification
  def self.execute
    notification = {
      device_tokens: ["device_token_one", "device_token_two"],
      alert: "Something really awesome just happened!",
      sound: "default",
      badge: 1
    }

    ZeroPush.notify(notification)
  end
end

TestNotification.execute