require 'rails_helper'

RSpec.describe MapsController, type: :controller do

	before do
		# create and log in current_user
		current_user = FactoryGirl.create(:user)
		session[:user_id] = current_user.id
	end

	describe "#new" do
		before do
			 get :new
		end

	
		it "should respond with 200 success" do
			expect(response.status).to be (200)
		end

		# it "should assign @map" do
		# 	expect(assigns(:map)).to be_instance_of(Map)
		# end

		it "should render the :new view" do
			expect(response).to render_template(:new)
		end
	end

	describe "#create" do
		context "success" do
			before do
				@maps_count = Map.count 
				post :create, map: {from: "General Assembly", to: "Russian Hill"}
			end

			it "should add a new map" do
				expect(Map.count).to eq(@maps_count + 1)
			end

			it "should respond with 200 success" do
        		expect(response.status).to be(200)
        	end
		end
	end
end
