# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_handbag_eshop_session',
  :secret      => '7ce857abc03a80b26756fa6d45e7951da852d63eed35885d7bbc343c41a1da9bf1ea40fdc02e58632fca56ff956e3da3cffaefc1cc7e797a62f2037e1a76ecc4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
