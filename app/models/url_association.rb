class UrlAssociation < ApplicationRecord
  validate :valid_url

  private

  def valid_url
    url = URI.parse(self.long_url) rescue false
    if !(url.kind_of?(URI::HTTP) || url.kind_of?(URI::HTTPS || url.blank?))
      errors.add(:base, "Invalid input URL")
    end
  end
end
