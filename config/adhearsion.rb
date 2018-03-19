require_relative '../app/models/drb_endpoint'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

Adhearsion.config do |config|
  config.adhearsion_drb do |drb|
    drb.shared_object = DrbEndpoint.new
  end
end
