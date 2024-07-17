require('rails_helper')

RSpec.describe PostsController, type: :controller do
  describe 'GET #index' do
    it 'returns a success response' do
      get :index
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    it 'creates a new post' do
      expect {
        post :create, params: { post: { title: "Sample", body: "Content" } }
      }.to change(Post, :count).by(1)
    end
  end
end
