class HomeController < ApplicationController

  def index
    load_tasks
    @tasks
    @task_selected = @tasks[0]
  end

  def calendar
    @month = [[1,2,3,4,5,6,7], [1,2,3,4,5,6,7], [1,2,3,4,5,6,7], [1,2,3,4,5,6,7], [1,2,3,4,5,6,7]]
  end

  def conn
    @conn ||= App.task_reminder_firebase.conn
  end

  def load_tasks
    @tasks ||= conn.get("task/").body.compact
    #binding.pry
  end

end
