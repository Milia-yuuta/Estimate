require 'csv'
class CalculationsController < ApplicationController
  include CsvHelper
  def index
    @calculations = Calculation.all
  end

  def new
    @calculations = Calculation.new
  end

  def create
    Calculation.create(calculation_params)
    redirect_to root_path
  end

  def show
    @c = Calculation.find(params[:id])
  end

  def edit
    @calculations = Calculation.find(params[:id])
  end

  def update
    calculation = Calculation.find(params[:id])
    calculation.update(calculation_params)
    redirect_to root_path
  end

  def destroy
    calculation = Calculation.find(params[:id])
    calculation.destroy
    redirect_to root_path
  end

  private
  def calculation_params
    params.require(:calculation).permit(:title,:charge, :weight, :material_cost,:postage,:administration_cost,:total_cost)
  end
end