require "rails_helper"


describe MembersController , :type => :controller do
  describe "GET index" do
    it "does not render the index template when logged in and not a member" do
      @request.session[:user_id] = "fake user"
      allow(User).to receive(:check_member).and_return(false)
      get :index
      expect(response).to redirect_to(root_path)
    end
    it "does not render the index template when not logged in" do
      @request.session[:user_id] = nil
      get :index
      expect(response).to redirect_to(root_path)
    end
    it "renders the index template when logged in and" do
      @request.session[:user_id] = "fake user"
      allow(User).to receive(:check_member).and_return(true)
      get :index
      expect(response).to render_template("/")
    end
  end
end