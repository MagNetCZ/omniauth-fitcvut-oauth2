require 'spec_helper'
require 'omniauth-fitcvut-oauth2'

describe OmniAuth::Strategies::FITCVUTOauth2 do
  let(:request) do
    double('request',
            :params => {},
            :cookies => {},
            :env => {})
  end

  subject do
    OmniAuth::Strategies::FITCVUTOauth2.new(nil, @options || {}).tap do |strategy|
      strategy.stub(:request => request)
    end
  end

  it_should_behave_like 'an oauth2 strategy'

  describe '#client' do
    it 'should have the correct FITCVUTOauth2 site' do
      expect(subject.client.site).to eq('https://auth.fit.cvut.cz')
    end

    it 'should have the correct authorization url' do
      expect(subject.client.options[:authorize_url]).to eq('/oauth/oauth/authorize')
    end

    it 'should have the correct token url' do
      expect(subject.client.options[:token_url]).to eq('/oauth/oauth/token')
    end
  end

  describe '#callback_path' do
    it 'should have the correct callback path' do
      expect(subject.callback_path).to eq('/auth/fitcvut_oauth2/callback')
    end
  end
end
