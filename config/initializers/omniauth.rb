Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '197827380376312', 'ae4b271af64ab4b8fdb74001d9d2eebf'
end