class ImagesController < ApplicationController

  def index
    @images = Image.all
  end
  
  def accident; end

  def show
    @image = Image.find(params[:id])
  end

  # Imageモデルに保存されているレコードをランダムで選択し、選択したレコードの詳細ページへリダイレクト
  def random
    @random_image = Image.order('RANDOM()').first
    redirect_to image_path(@random_image)
  end
end
