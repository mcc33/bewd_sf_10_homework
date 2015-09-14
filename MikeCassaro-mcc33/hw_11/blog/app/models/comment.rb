class Comment < ActiveRecord::Base
  belongs_to :article #belongs_to sets up ActiveRecord association. Each comment belongs to one article.
  #and one article can have many comments
end
