class AttractionsController < ApplicationController
  before_action :set_attraction, only: [:show]

  # GET /attractions
  # GET /attractions.json
  def index
    @attractions = Attraction.all
  end

  def category
    @attractions = Attraction.tagged_with(params[:tag]).order('RANDOM()').limit(4)
  end

  # GET /attractions/1
  # GET /attractions/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attraction
      @attraction = Attraction.find_by_slug(params[:id])
    end
end
