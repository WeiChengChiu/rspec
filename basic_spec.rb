require 'rspec'
require 'httpclient'

describe 'connections' do
  it 'are stable' do
    expect(HTTPClient.new.get("http://rspec.info/").status).to be 200
    expect(HTTPClient.new.get("http://rspec.info/").body).to include("Behaviour Driven Development for Ruby")
    expect(HTTPClient.new.get("https://www.facebook.com/").status).to be 200
  end
end