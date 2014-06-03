class MainController < InheritedResources::Base
  actions :index

  def index
    render '/index'
  end

end
