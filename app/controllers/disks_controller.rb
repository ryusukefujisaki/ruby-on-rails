class DisksController < ApplicationController
  def new
    @disk = Disk.new(band_id: params[:band_id])
    @type = params[:type]
  end

  def create
    @disk = Disk.new(band_id: params[:band_id])
    @disk.assign_attributes(disk_params)

    if @disk.save
      redirect_to band_url(@disk.band), notice: "Disk was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def disk_params
      params.require(:disk).permit(:type, :name, :released_on)
    end
end
