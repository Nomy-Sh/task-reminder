class ApplicationController < ActionController::Base
	helper_method :current_user
	before_action :authenticate_user, except: %i[signup login]

	def current_user
		@current_user ||= session[:user_id]
	end

	def load_tasks_all
    res = conn.get("task/").body.compact
    tasks = []
    res.each do |task|
    	tasks << task if task["user_id"] == current_user
    end
    #binding.pry
    return tasks

	end

end
