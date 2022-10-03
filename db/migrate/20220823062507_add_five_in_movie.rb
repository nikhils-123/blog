class AddFiveInMovie < ActiveRecord::Migration[7.0]
  def change
    5.times do |i|
    Movie.create(name: "Movie_1 ##{i}", cast: ["Cast1","Cast2","Cast3"] , director: "director1" , budget: "100cr" , producer: "producer1")
  end
  end
end
