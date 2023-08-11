class ImagesController < ApplicationController
  def index
    @images = Image.all
  end
  
  def accident; end

  def show
    # 予め用意した画像ファイルのパスを設定
    @image = Image.find(params[:id])
  end
  
  def random
    @random_image = Image.order('RANDOM()').first
    redirect_to image_path(@random_image)
  end
end
