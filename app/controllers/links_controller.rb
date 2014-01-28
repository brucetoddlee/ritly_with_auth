class LinksController < ApplicationController

  def index
  	@links = Link.all
  end

  def new
  	@link = Link.new
  end

  def create
  	new_params = {}
    input_params = params.require(:link).permit(:input_link)
    new_params[:input_link] = input_params[:input_link]
    new_params[:output_code] = SecureRandom.urlsafe_base64(6)
    link = Link.create(new_params)
    redirect_to link_path(link.id)
  end

  def show
    id = params[:id]
    @link = Link.find(id)
  end

  def preview
    current_code = params[:code]
  	current_record = Link.find_by output_code: current_code
    current_id = current_record.id
    redirect_to link_path(current_id)
  end

  def go
  	current_code = params[:code]
  	current_record = Link.find_by output_code: current_code
    destination = current_record.input_link
    redirect_to destination
  end

  def delete
    id = params[:id]
    deleted_link = Link.find(id)
    deleted_link.destroy
    redirect_to links_path
  end

end
