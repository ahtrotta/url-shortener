module UrlShortenerHelper
  def create_short_url
    # get current time in nanoseconds (since default Epoch) and convert to base 36
    (Time.now.to_f * 10000000000.0).to_i.to_s(36)
  end
end
