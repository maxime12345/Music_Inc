require 'rails_helper'

RSpec.describe AlbumsController, type: :controller do

  describe "#index" do
    context "as an authenticated user" do
      before do
        @user = FactoryBot.create(:user)
      end
      it "responds successfully" do
        sign_in @user
        get :index
        expect(response).to be_successful
      end
      it "returns a 200 response" do
        sign_in @user
        get :index
        expect(response).to have_http_status "200"
      end
    end
    context "as a guest" do
      it "responds successfully" do
        get :index
        expect(response).to be_successful
      end
      it "returns a 200 response" do
        get :index
        expect(response).to have_http_status "200"
      end
    end
  end

  describe "#show" do
    context "as an autheticated user" do
      before do
        @user = FactoryBot.create(:user)
        @album = FactoryBot.create(:album)
      end
      it "responds successfully" do
        sign_in @user
        get :show, params: { id: @album.id }
        expect(response).to be_successful
      end
      it "returns a 200 response" do
        sign_in @user
        get :index
        expect(response).to have_http_status "200"
      end
    end
    context "as a guest" do
      before do
        @album = FactoryBot.create(:album)
      end
      it "responds successfully" do
        get :show, params: { id: @album.id }
        expect(response).to be_successful
      end
      it "returns a 200 response" do
        get :index
        expect(response).to have_http_status "200"
      end
    end
  end

  describe "#create" do
    context "as an authenticated user" do
      before do
        @user = FactoryBot.create(:user)
      end
      context "with valid attributes" do
        it "adds an album" do
          album_params = FactoryBot.attributes_for(:album)
          sign_in @user
          expect {
            post :create, params: { album: album_params }
          }. to change(@user.albums, :count).by(1)
        end
      end
      context "with invalid attributes" do
        it "does not add an album" do
          album_params = FactoryBot.attributes_for(:album, :invalid)
          sign_in @user
          expect {
            post :create, params: { album: album_params }
          }. to_not change(@user.albums, :count)
        end
      end
    end
    context "as a guest" do
      it "returns a 302 response" do
        album_params = FactoryBot.attributes_for(:album)
        post :create, params: { album: album_params }
        expect(response).to have_http_status "302"
      end

      it "redirects to the sign-in page" do
        album_params = FactoryBot.attributes_for(:album)
        patch :create, params: { album: album_params }
        expect(response).to redirect_to "/users/sign_in"
      end
    end
  end
  describe "#update" do
    context "as an authorized user" do
      before do
        @user = FactoryBot.create(:user)
        @album = FactoryBot.create(:album, user: @user)
      end
      context "with valid attributes" do
        it "updates an album" do
          album_params = FactoryBot.attributes_for(:album, title: "New album title")
          sign_in @user
          patch :update, params: { id: @album.id, album: album_params }
          expect(@album.reload.title). to eq "New album title"
        end
      end
      context "with invalid attributes" do
        it "does not update an album" do
          album_params = FactoryBot.attributes_for(:album, :invalid)
          sign_in @user
          expect {
            post :update, params: { id: @album.id, album: album_params }
          }. to_not change(@user.albums, :count)
        end
      end
    end

    context "as an unauthorized user" do
      before do
        @user = FactoryBot.create(:user)
        other_user = FactoryBot.create(:user)
        @album = FactoryBot.create(:album, user: other_user, title: "Same old title")
      end

      it "does not update an album" do
        album_params = FactoryBot.attributes_for(:album, title: "New album title")
        sign_in @user
        patch :update, params: { id: @album.id, album: album_params }
        expect(@album.reload.title). to eq "Same old title"
      end

      it "redirects to the home" do
        album_params = FactoryBot.attributes_for(:album)
        sign_in @user
        patch :update, params: { id: @album.id, album: album_params }
        expect(response).to redirect_to root_path
      end
    end

    context "as a guest" do
      before do
        @album = FactoryBot.create(:album, title: "Same old title")
      end

      it "returns a 302 response" do
        album_params = FactoryBot.attributes_for(:album)
        patch :update, params: { id: @album.id, album: album_params }
        expect(response).to have_http_status "302"
      end

      it "redirects to the sign-in page" do
        album_params = FactoryBot.attributes_for(:album)
        patch :update, params: { id: @album.id, album: album_params }
        expect(response).to redirect_to "/users/sign_in"
      end


      it "does not update an album" do
        album_params = FactoryBot.attributes_for(:album, title: "New album title")
        patch :update, params: { id: @album.id, album: album_params }
        expect(@album.reload.title). to eq "Same old title"
      end
    end
  end

  describe "#destroy" do
    context "as an authorized user" do
      before do
        @user = FactoryBot.create(:user)
        @album = FactoryBot.create(:album, user: @user)
      end

      it "deletes a album" do
        sign_in @user
        expect {
          delete :destroy, params: { id: @album.id }
        }.to change(@user.albums, :count).by(-1)
      end
    end

    context "as an unauthorized user" do
      before do
        @user = FactoryBot.create(:user)
        other_user = FactoryBot.create(:user)
        @album = FactoryBot.create(:album, user: other_user)
      end

      it "does not delete the album" do
        sign_in @user
        expect {
          delete :destroy, params: { id: @album.id }
        }.to_not change(Album, :count)
      end

      it "redirects to the dashboard" do
        sign_in @user
        delete :destroy, params: { id: @album.id }
        expect(response).to redirect_to root_path
      end
    end

    context "as a guest" do
      before do
        @album = FactoryBot.create(:album)
      end

      it "returns a 302 response" do
        delete :destroy, params: { id: @album.id }
        expect(response).to have_http_status "302"
      end

      it "redirects to the sign-in page" do
        delete :destroy, params: { id: @album.id }
        expect(response).to redirect_to "/users/sign_in"
      end

      it "does not delete the album" do
        expect {
          delete :destroy, params: { id: @album.id }
        }.to_not change(Album, :count)
      end
    end
  end
end
