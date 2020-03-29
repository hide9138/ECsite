

class Admin::ItemsController < Admin::ApplicationController
  def index
	@item = Item.all
  end
end

