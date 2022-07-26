class RequestApiService
  BASE_URL = 'https://takehome.io/'.freeze
  EXCEPTIONS = [SocketError, Net::OpenTimeout].freeze

  def request(method: :get, endpoint: nil)
    return if endpoint.blank?

    url = "#{BASE_URL}#{endpoint}"
    r=HTTParty.send(method, url)

    byebug
  rescue *EXCEPTIONS => e
    Rails.logger.debug e.message
  end
end
