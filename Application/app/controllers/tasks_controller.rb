class TasksController < ApplicationController
  # 定義されていなかった為追記(CSRF対策)
  protect_from_forgery

  def index
    # tasksテーブルのデータを全取得
    @tasks = Task.all
    @task = Task.new
  end

  def show
    # index.html.erb及びedit.html.erbからgetで渡されたselect_idを取得
    @select_id = params[:id]
    # tasksテーブルからidとselect_idが一致するレコードを取得
    @tasks_select = Task.find(@select_id)
  end

  def new
    # モデルのインスタンス
    @task = Task.new
  end

  def create

    # form with の入力値をストロングパラメータtask_paramsを介して取得
    @task = Task.new(task_params)
    # @taskモデルに対する保存処理
    if @task.save
      #new.html.erbへリダイレクト
      redirect_to :action => "new"
    else
      # DBへの保存が失敗した場合
      @task = Task.new(task_params)
      # 保存直前から読み込む為renderを使用
      render "new"
    end
  end

  def edit
    # # # show.html.erbからgetで渡されたupdate_idを取得
    # @update_id = params[:update_id]
    # モデルのインスタンス(idとupdate_idが一致するレコードが格納されている)を生成
    @task = Task.find(params[:update_id])
  end

  def update
    # form with の入力値をストロングパラメータtask_paramsを介して取得
    # @task = Task.new(task_params)
    # @tasks = Task.find(@task.id)
    # @update_id = @task.id
    # @tasks_select = Task.find(@update_id)

    # @taskモデルに対する保存処理
    if @task.update(task_params)
      #edit.html.erbへリダイレクト
      redirect_to :action => "edit"
    else
      # DBへの保存が失敗した場合
      @task = Task.new(task_params)
      # 保存直前から読み込む為renderを使用
      render "edit"
    end
    # @task.update(task_contents: @task.task_contents, updated_date: @task.updated_date)
    # render :action => "edit"
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to :action => "index"
  end

  # ストロングパラメータ設定
  private

  def task_params
    params.require(:task).permit(:task_contents, :created_date, :updated_date)
  end
end
