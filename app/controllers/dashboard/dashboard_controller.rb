class Dashboard::DashboardController < ApplicationController
	#驗證使用者
	before_action :authenticate_user!
end
