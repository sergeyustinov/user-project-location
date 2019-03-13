require 'rails_helper'

RSpec.describe ProjectUser, type: :model do
  context 'role' do
    let(:project_user) { ProjectUser.new }

    it 'has default value' do
      project_user.save

      expect(ROLES).to include project_user.role
    end
  end
end
