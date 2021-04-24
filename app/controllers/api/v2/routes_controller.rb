class Api::V2::RoutesController < ApplicationController
  before_action :set_route, only: [:show, :update, :destroy]

  # GET /routes
  def index
    @routes = Route.all

    render json: @routes
  end

  # GET /routes/1
  def show
    render json: @route
    #render :show
  end

  # POST /routes
  def create
    @route = Route.new(route_params)
    @creator = User.new(route_params[:creator])
    puts("HOLAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAa")
    puts(route_params[:creator])

    if @route.save
      render json: @route, status: :created, location: url_for([:api, :v1, @route])

    else
      render json: @route.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /routes/1
  def update
    if @route.update(route_params)
      render json: @route
    else
      render json: @route.errors, status: :unprocessable_entity
    end
  end

  # DELETE /routes/1
  def destroy
    @route.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_route
      @route = Route.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def route_params
      #params.require(:route).permit(:calification, :latitude, :longitude)
      params.require(:route)
      .permit(:name, :rating, :private, :done, :startTime, :endTime,
        origin: [ :longitude, :latitude ], destination: [ :longitude, :latitude ],
        creator: [ :id2, :name ])
    end
end
