class SearchController < ApplicationController
  def results
    @loc = Location.all
    if params[:search].blank?
    redirect_to(search_results_path, notice: "Empty field!") and return
  else
    @parameter = '%' + params[:search].downcase + '%'
    @results = Item.all.where("lower(iName) LIKE :search", search: @parameter)
  end
end
end
