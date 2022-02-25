require "sinatra"
require "sinatra/reloader"
#sinatoraのURL(http://localhost:4567/)アクセス時にnew.erbを実行する処理
get "/" do
  erb :new
end
#show.erbで入力した辺a,bの値を元に斜辺cを計算してshow.erbを実行する処理
get "/calcurate" do
  @edge_a = params[:edge_a].to_f
  @edge_b = params[:edge_b].to_f
  @edge_c = Math.sqrt(@edge_a ** 2 + @edge_b ** 2)
  erb :show
end
#show.erbで戻るボタンを押下時にnew.erbを実行する処理
get "/back" do
  erb :new
end
