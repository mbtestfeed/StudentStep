class SubStuLinksController < ApplicationController
  before_action :set_sub_stu_link, only: [:show, :edit, :update, :destroy]

  # GET /sub_stu_links
  # GET /sub_stu_links.json
  def index
    @sub_stu_links = SubStuLink.all
  end

  # GET /sub_stu_links/1
  # GET /sub_stu_links/1.json
  def show
  end

  # GET /sub_stu_links/new
  def new

  end

  # GET /sub_stu_links/1/edit
  def edit
  end

  # POST /sub_stu_links
  # POST /sub_stu_links.json
  def create
    @sub_stu_link = SubStuLink.new(sub_stu_link_params)

    respond_to do |format|
      if @sub_stu_link.save
        format.html { redirect_to @sub_stu_link.subject, notice: @sub_stu_link.student.name + ' was successfully added.' }
        format.json { render :show, status: :created, location: @sub_stu_link }
      else
        format.html { render :new }
        format.json { render json: @sub_stu_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_stu_links/1
  # PATCH/PUT /sub_stu_links/1.json
  def update
    respond_to do |format|
      if @sub_stu_link.update(sub_stu_link_params)
        format.html { redirect_to @sub_stu_link, notice: 'Sub stu link was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_stu_link }
      else
        format.html { render :edit }
        format.json { render json: @sub_stu_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_stu_links/1
  # DELETE /sub_stu_links/1.json
  def destroy
    @sub_stu_link.destroy
    respond_to do |format|
      format.html { redirect_to sub_stu_links_url, notice: 'Sub stu link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_stu_link
      @sub_stu_link = SubStuLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_stu_link_params
      params.permit(:subject_id, :student_id)
    end
end
