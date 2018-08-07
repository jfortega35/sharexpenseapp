class ReceiptsController < ApplicationController
  def index
    @receipts = Receipt.all
  end

  def show
    @receipt = Receipt.find(params[:id])
  end

  def new
  end

  def create
    @receipt = Receipt.new(receipt_params)

    @receipt.save
    redirect_to @receipt
  end

  private
    def receipt_params
      params.require(:receipt).permit(:title, :location, :expense, :comments)
    end

end
