class ApiConnectorExample
  attr_accessor :title, :description, :url

  def initialize(title:, description:, url: url = 'google.com')
    @title = title
    @description = description
    @url = url
  end

  def testing_initializers
    puts @title
    puts @description
    puts @url
  end
end

api = ApiConnectorExample.new(description: 'Google main page', title: 'Google', url: 'https://gooogle.com/')
api.testing_initializers
#
api2 = ApiConnectorExample.new(title:'Google', description: 'Google main page')
api2.testing_initializers






