if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_beanstalk_app", domain: "https://beanstalk-app.herokuapp.com"

else
  Rails.application.config.session_store :cookie_store, key: "_beanstalk_app"
end


