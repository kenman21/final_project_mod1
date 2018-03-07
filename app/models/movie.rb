require 'pry'

class Movie < ActiveRecord::Base

  has_many :nominations
  has_many :nominees, through: :nominations

  def nomination_wins
    noms = nominations.where(win: 1)
  end

  def times_nominated
    nominations.size
  end

end
