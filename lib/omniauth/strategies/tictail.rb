require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Tictail < OmniAuth::Strategies::OAuth2
      option :name, :tictail

      option :client_options, site: 'https://tictail.com/oauth/token'

      uid do
        # Using store url as uid
        access_token.params['store']['url']
      end

      info do
        {
          name: access_token.params['store']['name'],
          email: access_token.params['store']['storekeeper_email']
        }
      end
    end
  end
end
