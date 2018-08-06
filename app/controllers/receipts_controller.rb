class ReceiptsController < ApplicationController
  def new
  end

  def create
    @receipt = Receipt.new(params[:receipt])

    @receipt.save
    redirect_to @receipt
  end

  private
    def receipt_params
      params.require(:receipt).permit(:title, :location, :expense, :comments)
    end

end
