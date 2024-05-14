class ListsController < ApplicationController

  def new
    @list = List.new
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
  end

  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    @list = List.new(list_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    if @list.save
    # 4. トップ画面へリダイレクト
     redirect_to list_path(@list)
    else
     render :new
    end
end


  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
