Configuration.for('fulcrum') do
  # On Heroku, ensure you `heroku config:add APP_HOST=appname.herokuapp.com`
  app_host ENV['APP_HOST'] || '127.0.0.1:3000'

  # The following encodes where your application is hosted. 
  # Use "" if you serve from root; use "/suburi" for a suburi deployment.
  #
  # Make sure you also change app_host to match, for the user confirmation mail to
  # work correctly.
  #
  # Example. if app_root is set to "/fulcrum", set app_host to "example.com/fulcrum"
  app_root ""

  # The address which system emails will originate from.
  mailer_sender ENV['MAILER_SENDER'] || 'noreply@example.com'

  # Disable registration pages
  disable_registration ENV['DISABLE_REGISTRATION'] || false
end
