class ApplicationController < ActionController::Base



  def after_sign_out_path_for(resource)
    root_path # ログアウト後に遷移するpathを設定
  end

  def after_sign_in_path_for(resource)
	  case resource
		  when Admin
		   admin_items_path
		  when EndUser
 		   end_user_path
 	  end
  end
end
