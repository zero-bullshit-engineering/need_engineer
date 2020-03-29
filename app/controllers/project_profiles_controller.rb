class ProjectProfilesController < ApplicationController
  before_action :set_project_profile, only: [:show, :edit, :update, :destroy]

  # GET /project_profiles
  # GET /project_profiles.json
  def index
    @project_profiles = ProjectProfile.all
  end

  # GET /project_profiles/1
  # GET /project_profiles/1.json
  def show
  end

  # GET /project_profiles/new
  def new
    @project_profile = ProjectProfile.new
  end

  # GET /project_profiles/1/edit
  def edit
  end

  # POST /project_profiles
  # POST /project_profiles.json
  def create
    @project_profile = ProjectProfile.new(project_profile_params)

    respond_to do |format|
      if @project_profile.save
        format.html { redirect_to @project_profile, notice: 'Project profile was successfully created.' }
        format.json { render :show, status: :created, location: @project_profile }
      else
        format.html { render :new }
        format.json { render json: @project_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_profiles/1
  # PATCH/PUT /project_profiles/1.json
  def update
    respond_to do |format|
      if @project_profile.update(project_profile_params)
        format.html { redirect_to @project_profile, notice: 'Project profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_profile }
      else
        format.html { render :edit }
        format.json { render json: @project_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_profiles/1
  # DELETE /project_profiles/1.json
  def destroy
    @project_profile.destroy
    respond_to do |format|
      format.html { redirect_to project_profiles_url, notice: 'Project profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_profile
      @project_profile = ProjectProfile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_profile_params
      params.require(:project_profile).permit(:name, :short_description, :domain_introduction, :project_link)
    end
end
