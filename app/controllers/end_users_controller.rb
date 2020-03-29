class EndUsersController < ApplicationController
	before_action :authenticate_end_user!

  def show
  	@end_user = current_end_user
  end


  # private
  # def end_user_params
  # 	params.require(:end_user).permit(:name, :introduction)
  # end
end
