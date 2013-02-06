class User < ActiveRecord::Base
  attr_accessible :ip_address, :name

  geocoded_by :ip_address,
  	:latitude => :latitude, :longitude => :longitude
  after_validation :geocode

 # Geocoder should allow to locate user's IP
 # Based on that I'd like to be able to display closest locations
  # def current_location
  # 	request.location.city
  # end 

end
