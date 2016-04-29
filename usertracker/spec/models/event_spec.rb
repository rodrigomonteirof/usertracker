require 'spec_helper'

describe Event do
  describe '#create_user' do
    subject { event.create_user }

    context 'when event doesnt have a user' do
      let(:event) { described_class.new(url: 'foo') }

      it 'create a user before save' do
        is_expected.to be_a(User)
      end
    end

    context 'when event has a user' do
      let(:event) { described_class.new(url: 'foo', user_id: 1) }
      let(:user) { User.find(1) }

      it 'return nil' do
        is_expected.to be_nil
      end

      it 'set user to event' do
        subject
        expect(event.user).to eq(user)
      end
    end
  end
end
