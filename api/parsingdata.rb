require 'rubygems'
require 'httparty'

class EduchecionalResty
  include HTTParty
  base_uri "edutechional-resty.herokuapp.com/"

  def posts
    self.class.get('/posts.json')
  end
end

edutechional_resty = EduchecionalResty.new

edutechional_resty.posts.each do |post|
  p "Title: #{post['title']} | Description: #{post['description']}"
end
