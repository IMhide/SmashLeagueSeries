class MatchesController < ApplicationController
  def index
    @all = Match.all
    @played = Match.played
    @scheduled = Match.scheduled - @played
  end
  def show
  end
end
