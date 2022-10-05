class HomeController < ApplicationController

  def index
    load_tasks
    @tasks
  end

  def calendar
  end

  def conn
    @conn ||= App.task_reminder_firebase.conn
  end

  def load_tasks
    @tasks ||= conn.get("task/").body.compact
    #binding.pry
  end

end
