class Nominee < ActiveRecord::Base

  has_many :nominations
  has_many :movies, through: :nominations 

  def nominations
  end

  def wins
  end

  def times_nominated
  end

end
