class ApiConnector
  attr_accessor :title, :description, :url

  def initialize(title:, description:, url: url = 'google.com')
    @title = title
    @description = description
    @url = url
  end

  def api_logger
    puts "API connector starting...."
  end

end

class SmsConnector < ApiConnector
  def api_logger
    puts "SMS API connection starting...."
  end

  def send_sms
    puts "Sending sms..."
  end
end

class MailConnector < ApiConnector
  def api_logger
    super
    puts "Mail API connection starting...."
  end

  def send_email
    puts "Sending email..."
  end
end

sms = SmsConnector.new(title: 'Google', description: 'Google main page', url: 'http://gooogle.com/')
sms.api_logger

email = MailConnector.new(title: 'Google', description: 'Google main page', url: 'https://gooogle.com/')
email.api_logger






