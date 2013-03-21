class AnnotationsController < ApplicationController

  def create

    Annotation.create(document_version_id: params[:id], content: params[:content], number: params[:number], xcoor: params[:xcoor], ycoor: params[:ycoor])

  end

  def destroy
    annotation = Annotation.find_by_number(params[:number])
    annotation.destroy
  end
  
end