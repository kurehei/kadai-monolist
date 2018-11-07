class RankingsController < ApplicationController
  def want
    @ranking_counts = Want.ranking
    @items = Item.find(@ranking_counts.keys)
  end
  
  def have
    @ranking_count = Have.ranking
    @items = Item.find(@ranking_count.keys)
  end
end
