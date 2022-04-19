class ApiConnector
  attr_accessor :title, :description, :url

  def initialize(title:, description:, url: url = 'google.com')
    @title = title
    @description = description
    @url = url
    secret_method
  end

  def testing_initializers
    puts @title
    puts @description
    puts @url
  end

  private

  def secret_method
    puts "A secret message from inside the parent class"
  end

  protected

  def protected_method
    puts "A protected message from inside the parent class"
  end
end

class SmsConnector < ApiConnector
  def send_sms
    puts "Sending sms..."
    `curl -X POST -d "notification[title]=#{@title}" -d "notification[url]=http://example-api/rest/posts/1" #{@url}`
  end
end

class MailConnector < ApiConnector
  def send_email
    puts "Sending email..."
  end
end

sms = SmsConnector.new(title: 'Google', description: 'Google main page', url: 'http://gooogle.com/')
# sms.testing_initializers
# sms.send_sms

email = MailConnector.new(title: 'Google', description: 'Google main page', url: 'https://gooogle.com/')
# email.testing_initializers
email.send_email






