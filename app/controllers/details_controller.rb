class DetailsController < ApplicationController
  before_action :set_detail, only: [:show, :destroy, :edit, :update]

  def index
  end

  def new
    @detail = Detail.new
  end

  def create
    puts"==========#{detail_params.inspect}============="
    @detail = Detail.new(detail_params)
    # @detail.image.attach(params[:image])
    if @detail.save
      respond_to do |format|
        format.js
        format.html { redirect_to @detail, notice: "save successfully 111" }
      end
    else
      render 'new'     # render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @detail.update(detail_params)
      respond_to do |format|
        format.js
        format.html { redirect_to @detail }
      end
    else
      render 'edit'
    end
  end

  def destroy
    @detail.destroy
    @abc = 'abc'
    respond_to do |format|
      format.js
      format.html {redirect_to details_path, notice: 'Post was successfully destroyed.'}
    end

  end

  private

  def set_detail
    @detail = Detail.find(params[:id])
  end
  def detail_params
    params.require(:detail).permit(:name, :email, :image)
  end
end


# redirect_to controller: 'thing', action: 'edit', id: 3, something: 'else'
# redirect_to :back, flash: {new_solution_errors: solution.errors}
# redirect_to new_user_path(:id => 1, :contact_id => 3, :name => 'suleman')
#




