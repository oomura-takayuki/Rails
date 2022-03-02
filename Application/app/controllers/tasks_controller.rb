class TasksController < ApplicationController
  # 定義されていなかった為追記(CSRF対策)
  protect_from_forgery

  def index
    # tasksテーブルのデータを全取得
    @tasks = Task.all
  end

  def show
    # index.html.erb及びedit.html.erbからgetで渡されたselect_idを取得
    @select_id = params[:select_id]
    # tasksテーブルからidとselect_idが一致するレコードを取得
    @tasks_select = Task.find(@select_id)
  end

  def new
  end

  def create
    # new.html.erbからpostで渡されたtask_contentsを取得しデータを作成
    Task.create({ task_contents: params[:task_contents], created_date: Time.zone.now, updated_date: Time.zone.now })
    # #new.html.erbへ戻る
    redirect_to :action => "new"
  end

  def edit
    # # show.html.erbからgetで渡されたupdate_idを取得
    @update_id = params[:update_id]
    # # tasksテーブルからidとupdate_idが一致するレコードを取得
    # @tasks_select = Task.find(@update_id)
    @tasks_select = Task.find(@update_id)
  end

  def update
    @update_id = params[:update_id]
    @tasks_select = Task.find(@update_id)
    @tasks_select.update(task_contents: params[:task_contents])
    redirect_to :action => "edit"
  end

  def destroy
  end
end
