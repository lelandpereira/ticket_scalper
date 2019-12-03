module ApplicationHelper  

  def collapse_search_form
    if params[:q].blank?
      "collapse"
    else
      ""
    end
  end

end
