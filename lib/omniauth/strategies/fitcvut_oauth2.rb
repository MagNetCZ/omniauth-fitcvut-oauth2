require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class FITCVUTOauth2 < OmniAuth::Strategies::OAuth2
      DEFAULT_SCOPE = 'non-expiring'

      option :name, "fitcvut"

      option :client_options, {
        :site => 'https://auth.fit.cvut.cz',
        :authorize_url => '/oauth/oauth/authorize',
        :token_url => '/oauth/oauth/token'
      }

      uid{ raw_info['user_id'] }

      info do
        {
            :name => raw_info['user_id'],
            :email => raw_info['user_email']
        }
      end

      extra do
        {
            'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get("/oauth/api/v1/tokeninfo?token=#{access_token.token}").parsed
        @raw_info
      end
    end
  end
end

OmniAuth.config.add_camelization 'fitcvut_oauth2', 'FITCVUTOauth2'
OmniAuth.config.add_camelization 'fitcvut', 'FITCVUT'
