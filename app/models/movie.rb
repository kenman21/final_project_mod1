class Movie < ActiveRecord::Base

  has_many :nominations
  has_many :nominees, through: :nominations


  def wins

  end

  def times_nominated
  end

end
