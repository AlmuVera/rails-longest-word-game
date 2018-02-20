class GamesController < ApplicationController
  def new
    @letters = 10.times.map { ('A'..'Z').to_a[rand(26)] }.join(" ")
  end

  def score
    @letters = params[:letters]
    @word = params[:word]
    @result = nil
    if @word.each_char.map  { |c| @letters.include?(c) }.include? true
      @result = "Correct!"
    else
      @result = "Incorrect!"
    end

  end


end

