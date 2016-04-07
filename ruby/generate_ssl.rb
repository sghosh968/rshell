module GenerateSsl
  require "open3"
  class Openssl
    attr_reader :domain_name, :destination_path, :pass_phrase, :registration_data
    def initialize(domain_name, destination_path, passphrase, registration_data)
      @domain_name = domain_name
      @destination_path = destination_path
      @passphrase = passphrase
      @registration_data = structify_registration_data(registration_data)
    end

    def generate_rsa_key

    end






    RegistrationData = Struct.new(:country_name, :state_name, :locality_or_city,
                                  :organisation_name, :organization_unit_name,
                                  :fqdn, :email_address)
    def structify_registration_data(registration_data)
      RegistrationData.new(registration_data[:country_name], registration_data[:state_name],
                           registration_data[:locality_or_city], registration_data[:organization_unit_name],
                           registration_data[:fqdn], registration_data[],
                           registration_data[:email_address])
    end
  end
end
