require "rails_helper"


describe MembersController , :type => :controller do
  describe "GET index" do
    it "renders the index template when logged in" do
      @request.session[:user_id] = "fake user"
      get :index
      expect(response).to render_template("index")
    end
    it "deos not render the index template when not logged in" do
      @request.session[:user_id] = nil
      get :index
      expect(response).to redirect_to(root_path)
    end
  end
end