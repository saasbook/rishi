class User < ActiveRecord::Base
    def self.from_omniauth(auth)
        where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
            user.provider = auth.provider
            user.uid = auth.uid
            user.name = auth.info.name
            if auth.credentials
                user.oauth_token = auth.credentials.token
                user.oauth_expires_at = Time.at(auth.credentials.expires_at)
            end
            
            # right now for cucumber test
            # fix once get user data
            if user.name.eql? 'internal'
                user.role = 'internal'
            elsif user.name.eql? 'external'
                user.role = 'external'
            end
            
            user.save!
        end
        
    end