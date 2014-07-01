module ApplicationHelper
  def container_tag
    raise "Body must have a block" if !block_given?
    content_tag(:section, class: "#{params[:controller]} #{params[:action]}") do
      yield
    end
  end
end
