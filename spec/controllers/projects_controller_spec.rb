require 'spec_helper'

describe ProjectsController do

  describe "GET 'nds_toolkit'" do
    it "returns http success" do
      get 'nds_toolkit'
      response.should be_success
    end
  end

  describe "GET 'nutella'" do
    it "returns http success" do
      get 'nutella'
      response.should be_success
    end
  end

end
