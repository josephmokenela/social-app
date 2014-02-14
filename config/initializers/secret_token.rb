# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token
    File.read(token_file).chomp
  else
    # Generate a new token and store it in a token file
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end
SocialApp::Application.config.secret_key_base = secure_token #'9c03d39e387d170b3fa8a6144c61e3169c4d8ff3def56bb8244af7fa55bc184414deafde6da32c1f4a4af50dbacb3e1020e94929796a4f33d405d455ddc650d3'
