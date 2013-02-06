class User < ActiveRecord::Base
  attr_accessible :ip_address, :name

  geocoded_by :ip_address,
  	:latitude => :latitude, :longitude => :longitude
  after_validation :geocode

  

end
