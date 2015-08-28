class LegsController < ApplicationController
  before_action :set_leg, only: [:show, :edit, :update, :destroy]

  def index
    @legs = Leg.all
  end

  def show
  end

  def new
    @leg = Leg.new
  end

  def edit
  end

  def create
    @leg = Leg.new(leg_params)

    respond_to do |format|
      if @leg.save
        format.html { redirect_to edit_leg_path(@leg), notice: 'Game on!' }
        format.json { render :edit, status: :created, location: @leg }
      else
        format.html { render :new }
        format.json { render json: @leg.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @leg.reduce_by(params[:score].to_i)
    @leg.shots.build(params[:darts])

    respond_to do |format|
      if @leg.save
        format.html { redirect_to @leg, notice: 'Leg was successfully updated.' }
        format.json { render :score, status: :ok, location: @leg }
      else
        format.html { render :edit }
        format.json { render json: @leg.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @leg.destroy
    respond_to do |format|
      format.html { redirect_to legs_url, notice: 'Leg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_leg
      @leg = Leg.find(params[:id])
    end

    def leg_params
      params.permit(:score)
    end
end
