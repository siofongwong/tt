class Route
  include MongoMapper::Document

  key :name, String
  key :places, Array
  timestamps!

end

"""
class Place
  include MongoMapper::EmbeddedDocument

  key :name, String

end
"""