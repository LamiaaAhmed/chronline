class Admin::GalleriesController < Admin::BaseController

  def index
    @galleries = Gallery.all
  end

  def edit
    @gallery = Gallery.find_by_gid(params[:id])
  end

  def update
    @gallery = update_gallery(Gallery.find_by_gid(params[:id]))
    puts "gallery: #{@gallery.name}"
    if true # @gallery.save
      redirect_to edit_admin_gallery_path(@gallery.gid)
    else
      render 'edit'
    end
  end

  def destroy
  end

  private
  def update_gallery(gallery)
      gallery.update_attributes(params[:gallery])
    return gallery
  end

 end