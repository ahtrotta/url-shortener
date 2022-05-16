require 'open-uri'

module UrlShortenerHelper
  def create_short_url
    # get current time in nanoseconds (since default Epoch) and convert to base 36
    (Time.now.to_f * 10000000000.0).to_i.to_s(36)
  end

  def ensure_protocol(input_url)
    if /\Ahttp[s]?:\/\//.match(input_url)
      input_url
    elsif input_url
      'https://' + input_url
    end
  end

  def valid_url?(input_url)
    status_code = URI.open(input_url).status.first rescue '404'
    status_code == '200'
  end
end
