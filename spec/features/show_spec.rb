require 'rails_helper'

RSpec.describe 'Article Show' do
  describe 'As a user' do
    before :each do
      @article_1 = Article.create!(title: "Title 1", body: "Body 1")
      @article_2 = Article.create!(title: "Title 2", body: "Body 2")
    end
    it 'can see the specific article desired' do
      visit '/articles'

      expect(page).to have_link(@article_1.title)
      click_link "#{@article_1.title}"

      expect(current_path).to eq("/articles/#{@article_1.id}")

      expect(page).to have_content(@article_1.title)
      expect(page).to have_content(@article_1.body)
      expect(page).to_not have_content(@article_2.title)
    end
  end
end
