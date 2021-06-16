class SongSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :artist, :album, :song_url, :submitted_by, :genre_id, :genre
end

#json serialier is good for scalability as it is nesting our attributes and data in a way that is very descriptive and makes it easier
#with fast json api serializer we can control what gets rendered in our json data and we can also create and display assocations in our data.
