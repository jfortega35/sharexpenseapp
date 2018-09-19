class ReceiptsController < ApplicationController
  def index
    @receipts = Receipt.all
  end

  def show
    @receipt = Receipt.find(params[:id])
  end

  def new
    @receipt = Receipt.new
  end

  def edit
    @receipt = Receipt.find(params[:id])
  end


  def create
    @receipt = Receipt.new(receipt_params)

    if @receipt.save
    redirect_to @receipt
  else
    render 'new'
  end
end

def update
  @receipt = Receipt.find(params[:id])

  if @receipt.update(receipt_params)
    redirect_to @receipt
  else
    render 'edit'
  end
end

def destroy
  @receipt = Receipt.find(params[:id])
  @receipt.destroy

  redirect_to receipts_path
end 

  private
    def receipt_params
      params.require(:receipt).permit(:user_id, :title, :location, :expense, :comments)
    end

end
