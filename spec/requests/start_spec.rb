require 'spec_helper'

describe "Start" do
  describe "GET /start" do
    it "displays the game state" do
      visit root_path
      page.should have_content 'Welcome to Literature'
    end
  end
end
