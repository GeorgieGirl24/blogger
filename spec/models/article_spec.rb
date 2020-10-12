require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'validations' do
    it { should validated_presence_of(:title) }
    it { should validate_presenc_of(:body) }
  end
end 
