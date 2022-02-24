require "sinatra"
require "sinatra/reloader"
#sinatoraのURL(http://localhost:4567/)アクセス時に:pythagorascd.erbを実行する処理
get "/" do
  erb :pythagoras
end

get "/calcurate" do
  @edge_a = params[:edge_a].to_f
  @edge_b = params[:edge_b].to_f
  @edge_c = Math.sqrt(@edge_a ** 2 + @edge_b ** 2)
  erb :pythagoras
end
