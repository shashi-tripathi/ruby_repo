# Be sure to restart your server when you modify this file.

#Rails.application.config.session_store :cookie_store, key: '_tution_india_session'
#Rails.application.config.session_store :active_record_store

Rails.application.config.session_store ActionDispatch::Session::CacheStore,
expires_after: 20.minutes

