class CardsController < ApplicationController
  def weekly
    render :json => weekly_data
  end
  
  def monthly
    starting_point = Time.now - 28.days
    output = month(starting_point)
    render :json => output
  end
  
  private
  def month(starting_point)
    complete = false
    monthly = []
    oldest_record = Card.first.created_at

    until complete
      beg_of_month = starting_point - 30.days
      count = Card.where(created_at: (beg_of_month)..starting_point).count
      monthly << { month_start: beg_of_month.to_s[0..10], count: count }
      starting_point = beg_of_month
      complete = true if starting_point < oldest_record
    end
    monthly
  end
  
  def weekly_data
    today = Time.now
    weekly = []
    
    4.times do
      beg_of_week = today - 7.days
      count = Card.where(created_at: (beg_of_week)..today).count
      weekly << { week_start: beg_of_week.to_s[0..10], count: count }
      today = beg_of_week
    end
    weekly
  end
end
