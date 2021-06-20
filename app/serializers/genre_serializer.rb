class GenreSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description
end
