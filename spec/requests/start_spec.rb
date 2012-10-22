require 'spec_helper'

describe "Start" do
  describe "GET /start" do
    it "display the game state" do
      visit start_path
      page.should have_content 'Welcome to Literature'
    end
  end
end
