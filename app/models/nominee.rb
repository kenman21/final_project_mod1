class Nominee < ActiveRecord::Base

  has_many :nominations
  has_many :movies, through: :nominations

  def all_nominations
    nominations.where(nominee_id: id)
  end 

  def nomination_wins
    noms = nominations.where(win: 1)
  end

  def times_nominated
    nominations.size
  end


end
