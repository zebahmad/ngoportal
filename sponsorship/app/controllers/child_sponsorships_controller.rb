class ChildSponsorshipsController < ApplicationController
  before_action :set_child_sponsorship, only: [:show, :edit, :update, :destroy]

  # GET /child_sponsorships
  # GET /child_sponsorships.json
  def index
    @child_sponsorships = ChildSponsorship.all
  end

  # GET /child_sponsorships/1
  # GET /child_sponsorships/1.json
  def show
  end

  # GET /child_sponsorships/new
  def new
    @child_sponsorship = ChildSponsorship.new
  end

  # GET /child_sponsorships/1/edit
  def edit
  end

  # POST /child_sponsorships
  # POST /child_sponsorships.json
  def create
    @child_sponsorship = ChildSponsorship.new(child_sponsorship_params)

    respond_to do |format|
      if @child_sponsorship.save
        format.html { redirect_to @child_sponsorship, notice: 'Child sponsorship was successfully created.' }
        format.json { render :show, status: :created, location: @child_sponsorship }
      else
        format.html { render :new }
        format.json { render json: @child_sponsorship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /child_sponsorships/1
  # PATCH/PUT /child_sponsorships/1.json
  def update
    respond_to do |format|
      if @child_sponsorship.update(child_sponsorship_params)
        format.html { redirect_to @child_sponsorship, notice: 'Child sponsorship was successfully updated.' }
        format.json { render :show, status: :ok, location: @child_sponsorship }
      else
        format.html { render :edit }
        format.json { render json: @child_sponsorship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /child_sponsorships/1
  # DELETE /child_sponsorships/1.json
  def destroy
    @child_sponsorship.destroy
    respond_to do |format|
      format.html { redirect_to child_sponsorships_url, notice: 'Child sponsorship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_child_sponsorship
      @child_sponsorship = ChildSponsorship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def child_sponsorship_params
      params.require(:child_sponsorship).permit(:child_id, :sponsor_id, :sponsorship_type, :start_from, :valid_till, :periodicity, :event, :comments)
    end
end
