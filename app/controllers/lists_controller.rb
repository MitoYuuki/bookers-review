class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      flash[:notice] = "謚慕ｨｿ縺ｫ謌仙粥縺励∪縺励◆縲・
      redirect_to list_path(@list.id)
    else
      flash.now[:alert] = "謚慕ｨｿ縺ｫ螟ｱ謨励＠縺ｾ縺励◆縲・ #繧ｭ繝ｼ繧誕lert縺ｫ螟画峩
      render :new
    end
  end

  def index
  end

  def show
    @list = List.find(params[:id])  
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to list_path(list.id)  
  end

  def destroy
    list = List.find(params[:id])  # 繝・・繧ｿ・医Ξ繧ｳ繝ｼ繝会ｼ峨ｒ1莉ｶ蜿門ｾ・    list.destroy  # 繝・・繧ｿ・医Ξ繧ｳ繝ｼ繝会ｼ峨ｒ蜑企勁
    redirect_to '/lists'  # 謚慕ｨｿ荳隕ｧ逕ｻ髱｢縺ｸ繝ｪ繝繧､繝ｬ繧ｯ繝・ 
  end

   private
  # 繧ｹ繝医Ο繝ｳ繧ｰ繝代Λ繝｡繝ｼ繧ｿ
  def list_params
    params.require(:list).permit(:title, :body)
  end
  
end



