require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

Blinkapp::Application.config.secret_key_base = secure_token

# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
#Blinkapp::Application.config.secret_key_base = 'd0e8879cbe39b2da92f284717f1a8428d45dccc7292bc0a5096a33c35f778ac3f0abaf58a2016f24f557bf9e4d147bc47afd4c8f855cbd94db6cfc05b85c2b81'
