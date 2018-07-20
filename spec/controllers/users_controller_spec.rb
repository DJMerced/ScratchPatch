require 'rails_helper'
require 'factory_bot'
describe UsersController, type: :controller do
let(:user) { FactoryBot.create(:user) }
let(:user2) { FactoryBot.create(:user) }
  describe 'GET #show' do
     context 'when a user is logged in' do
       before do
         sign_in user
       end
       it 'loads correct user data' do
         get :show, params: { id: user.id }
         expect(response).to be_ok
         expect(assigns(:user)).to eq user
       end
       it "first user can't access the Show page of the second user but is redirected to the root_path instead" do
         get :show, params: { id: user2.id }
         expect(response).to have_http_status(302)
         expect(response).to redirect_to(root_path)
       end
     end
     context 'when a user is not logged in' do
       it 'redirects to login' do
         get :show, params: { id: user.id }
         expect(response).to redirect_to(new_user_session_path)
       end
     end
  end
end
