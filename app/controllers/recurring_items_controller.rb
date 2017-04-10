class RecurringItemsController < ApplicationController
  def index
    @recurring_items = RecurringItem.all
    puts @recurring_items.to_json
    respond_to do |format|
      format.json { render json: @recurring_items}
    end
  end

  def show
    @recurring_item = RecurringItem.where(id: params[:id]).first
    puts @recurring_item.to_json
    respond_to do |format|
      format.json { render json: @recurring_item}
    end
  end

end