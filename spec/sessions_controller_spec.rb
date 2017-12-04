require "rails_helper"
require "spec_helper"
    
describe SessionsController , :type => :controller do
    before do
        request.env['omniauth.auth'] = OmniAuth.config.mock_auth[:google]
    end
    
    before(:each) do
        UserList.create(email: "test@test.com", role:"executive")
    end
    
    describe "access top page" do
      it "can see the sign in button" do
        visit '/'
        expect(page).to have_content("SIGN IN")
      end
      it "can access the sign in page" do
          visit '/signin'
          expect(page).to have_button("Authorize")
      end
      it "should successfully create a user" do
          expect {
            post :create, provider: :google
          }.to change{ User.count }.by(1)
        end
      
  end

end