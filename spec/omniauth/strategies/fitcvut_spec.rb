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
      subject.client.site.should eq('https://auth.fit.cvut.cz')
    end

    it 'should have the correct authorization url' do
      subject.client.options[:authorize_url].should eq('/oauth/oauth/authorize')
    end

    it 'should have the correct token url' do
      subject.client.options[:token_url].should eq('/oauth/oauth/token')
    end
  end

  describe '#callback_path' do
    it 'should have the correct callback path' do
      subject.callback_path.should eq('/auth/fitcvut_oauth2/callback')
    end
  end
end
