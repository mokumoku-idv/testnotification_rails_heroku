if Rails.env.production?
  ZeroPush.auth_token = 'iosprod_DzcC1yLVpEEGQZU86BZv'
else
  ZeroPush.auth_token = 'iosdev_U3JaAF1r2vdLpGnbCZqB'
end
