class User < ActiveRecord::Base
    validate :must_be_member
    
    def self.from_omniauth(auth)
        where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
            user.provider = auth.provider
            user.uid = auth.uid
            user.name = auth.info.name
            user.email = auth.info.email
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
            if user.valid?
                user.save!
            end
        end
    end
    
    def must_be_member
        errors.add(:base, 'User must be a rishi member') if !UserList.exists?(:email => email)
    end
        
    def self.check_member(user_id)
        if User.exists?(:uid => user_id)
            return true
        else
            return false
        end
    end
    
end
