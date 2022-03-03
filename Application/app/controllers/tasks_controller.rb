class TasksController < ApplicationController
  # 定義されていなかった為追記(CSRF対策)
  protect_from_forgery

  def index
    # tasksテーブルのデータを全取得
    @tasks = Task.all
  end

  def show
    # index.html.erb及びedit.html.erbからgetで渡されたidを元に一致するレコードを取得
    @tasks_select = Task.find(params[:id])
  end

  def new
    # viewで使用する為にモデルのインスタンス生成
    @task = Task.new
  end

  def create

    # form with の入力値をストロングパラメータtask_paramsを介して取得
    @task = Task.new(task_params)
    # @taskモデルに対する保存処理
    if @task.save
      # flashメッセージの指定
      flash[:success] = "登録に成功しました"
      # new.html.erbへリダイレクト
      redirect_to :action => "new"
    else
      # DBへの保存が失敗した場合
      @task = Task.new(task_params)
      # flashメッセージの指定
      flash[:danger] = "登録に失敗しました"
      # 登録直前から読み込む為renderを使用
      render "new"
    end
  end

  def edit
    # show.html.erbからgetで渡されたidを元に一致するレコードを取得
    @task = Task.find(params[:id])
  end

  def update
    # edit.html.erbからputで渡されたidを元に一致するレコードを取得
    @task = Task.find(params[:id])
    # @taskモデルに対する更新処理
    if @task.update(task_params)
      # flashメッセージの指定
      flash[:success] = "更新に成功しました"
      # edit.html.erbへリダイレクト
      redirect_to :action => "edit"
    else
      # DBへの保存が失敗した場合
      @task = Task.find(params[:id])
      # flashメッセージの指定
      flash[:danger] = "更新に失敗しました"
      # 更新直前から読み込む為renderを使用
      render "edit"
    end
  end

  def destroy
    # index.html.erb及びshow.html.erbからgetで渡されたidを元に一致するレコードを取得
    @task = Task.find(params[:id])
    # @taskモデルに対する削除処理
    if @task.destroy
      # flashメッセージの指定
      flash[:success] = "削除に成功しました"
    else
      # flashメッセージの指定
      flash[:danger] = "削除に失敗しました"
    end
    # index.html.erbへリダイレクト
    redirect_to :action => "index"
  end

  # ストロングパラメータ設定
  private

  def task_params
    params.require(:task).permit(:task_contents, :created_date, :updated_date)
  end
end
