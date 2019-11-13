class MatchesController < ApplicationController
  def index
    @all = Match.all
    @played = Match.played
    @scheduled = Match.scheduled - @played
    @standing = Team.all.sort_by(&:win_count).reverse
  end

  def show
  end
end
