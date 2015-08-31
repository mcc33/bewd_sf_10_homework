
require 'pry'


class Apartment

  attr_accessor :number, :sqft, :price, :bedrooms, :bathrooms, :renter
  #Getter & setter method for attributes associated to instances of the class

  def initialize(number, sqft, bedrooms, bathrooms)
    #Creates instances of the class, requiring 5 attributes as arguments
    @number = number #setting instance variables equal to arguments
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @renter = nil
    #since initialize creates an instance of this class,
    #these attributes are needed, even if they are empty at the outset.
    @price = nil
  end

  def to_s #overrides the inherited to_s method, since it is defined within the class.
    #Anything 'puts''d
    "Apartment #{number} has #{sqft} square feet. There are #{bedrooms} bedrooms and #{bathrooms} bathrooms."
  end

  def not_occupied? #This is an instance method.
    renter.nil?
    # equivalent to: true if resident == nil
    #checks to see whether the renter variable is empty or not
  end

end
