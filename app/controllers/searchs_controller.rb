class SearchsController < ApplicationController
  def search
    @model = params["model"]
    @method = params["method"]
    @content = params["content"]
    @records = search_for(@model, @content, @method)
  end
  
  private
  
  def search_for(model, content, method)
    if model == "user"
      if method == "perfect"
        User.where(name: content)
      else
        User.where("name LIKE ?", "%"+content+"%")
      end
    elsif model == "item"
      if method == "perfect"
        Item.where(title: content)
      else
        Item.where("title LIKE ?", "%"+content+"%")
      end
    end
  end
end
