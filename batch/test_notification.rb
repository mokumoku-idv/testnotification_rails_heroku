class TestNotification
  def self.execute
    notification = {
      device_tokens: ["edd501209fd91d82d70aa5ce62bf395056f46fb306c2757725eae67910240f42","fd47e21fbdf942f1910567bb36a4a8784a3533662415bfe40d4dfefeecddc6ce"],
      alert: "Something really awesome just happened!",
      sound: "default",
      badge: 1
    }

    ZeroPush.notify(notification)
  end
end

TestNotification.execute