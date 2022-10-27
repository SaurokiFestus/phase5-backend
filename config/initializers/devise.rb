OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '1046539588446-t5i427dqrv4of643arnatu2m9thmaq11.apps.googleusercontent.com', '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', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end