class SponsorshipDsController < ApplicationController
  before_action :set_sponsorship_d, only: [:show, :edit, :update, :destroy]

  # GET /sponsorship_ds
  # GET /sponsorship_ds.json
  def index
    @sponsorship_ds = SponsorshipD.all
  end

  def save
    @req_id = params[:req_id]
    @requirement = Requirement.find_by(id: params[:req_id])
    @requirement.update_attributes(matched: true)

    @sponsorship = SponsorshipD.new
    @sponsorship.update_attributes(user_id: current_user.id, requirement_id: params[:req_id], amount: @requirement.cost)
    #@sponsorship.user_id = current_user.id
    #@sponsorship.requirement_id = @req_id
    #@sponsorship.amount = @requirement.cost

    @requirement.save!
    @sponsorship.save!

    flash[:success] = "Congratulations! You have sponsored a need!"
    redirect_to requirements_url
  end

  # GET /sponsorship_ds/1
  # GET /sponsorship_ds/1.json
  def show
  end

  # GET /sponsorship_ds/new
  def new
    message = "Check your email for the activation link."
    flash[:danger] = message
    @sponsorship_d = SponsorshipD.new
  end

  # GET /sponsorship_ds/1/edit
  def edit
  end

  # POST /sponsorship_ds
  # POST /sponsorship_ds.json
  def create
    @sponsorship_d = SponsorshipD.new(sponsorship_d_params)

    respond_to do |format|
      if @sponsorship_d.save
        format.html { redirect_to @sponsorship_d, notice: 'Sponsorship d was successfully created.' }
        format.json { render :show, status: :created, location: @sponsorship_d }
      else
        format.html { render :new }
        format.json { render json: @sponsorship_d.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sponsorship_ds/1
  # PATCH/PUT /sponsorship_ds/1.json
  def update
    respond_to do |format|
      if @sponsorship_d.update(sponsorship_d_params)
        format.html { redirect_to @sponsorship_d, notice: 'Sponsorship d was successfully updated.' }
        format.json { render :show, status: :ok, location: @sponsorship_d }
      else
        format.html { render :edit }
        format.json { render json: @sponsorship_d.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sponsorship_ds/1
  # DELETE /sponsorship_ds/1.json
  def destroy
    @sponsorship_d.destroy
    respond_to do |format|
      format.html { redirect_to sponsorship_ds_url, notice: 'Sponsorship d was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sponsorship_d
      @sponsorship_d = SponsorshipD.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sponsorship_d_params
      params.fetch(:sponsorship_d, {})
    end
end
