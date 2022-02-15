# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord
  def characters 
    my_character_id = self.id
    matching_characters = Character.where({:actor_id => my_character_id})
    return matching_characters
  end
end

# get my id, then characters, 
# for each character get the movie, then return all the movies