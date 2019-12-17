require 'rails_helper'

RSpec.describe SessionsHelper, type: :helper do
  context "with user" do
    let(:current_user) { create(:user) }

    before do
      allow(helper).to receive(:current_user).and_return(current_user)
    end

    it "access granted" do
      expect(helper.login_required).to be_truthy
    end
  end
end
