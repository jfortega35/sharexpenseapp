class ReceiptsController < ApplicationController
  def new
  end

  def create
    @receipt = Receipt.new(params[:receipt])

  @receipt.save
  redirect_to @receipt
  end
end
