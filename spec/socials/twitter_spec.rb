require 'spec_helper'

describe PageRankr::Socials::Twitter do
  describe '#run' do
    let(:tracker){described_class.new(site)}
    subject(:result){tracker.run}

    context 'with match', :vcr do
      let(:site){'http://www.flippa.com'}

      it{is_expected.to eq(0)}
    end

    context 'with no match', :vcr do
      let(:site){'http://please-dont-register-a-site-that-breaks-this-test.com'}

      it{is_expected.to eq(0)}
    end
  end
end
