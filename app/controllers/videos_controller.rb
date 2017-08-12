class VideosController < InheritedResources::Base

  private

    def video_params
      params.require(:video).permit(:title, :description,:attachment )
    end
end

