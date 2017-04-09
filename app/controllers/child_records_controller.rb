class ChildRecordsController < ApplicationController
  before_action :set_child_record, only: [:show, :edit, :update, :destroy]

  # GET /child_records
  # GET /child_records.json
  def index
    @child_records = childRecord.all
  end

  # GET /child_records/1
  # GET /child_records/1.json
  def show
  end

  # GET /child_records/new
  def new
    @child_record = childRecord.new
  end

  # GET /child_records/1/edit
  def edit
  end

  # POST /child_records
  # POST /child_records.json
  def create
    @child_record = childRecord.new(child_record_params)

    respond_to do |format|
      if @child_record.save
        format.html { redirect_to @child_record, notice: 'child record was successfully created.' }
        format.json { render :show, status: :created, location: @child_record }
      else
        format.html { render :new }
        format.json { render json: @child_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /child_records/1
  # PATCH/PUT /child_records/1.json
  def update
    respond_to do |format|
      if @child_record.update(child_record_params)
        format.html { redirect_to @child_record, notice: 'child record was successfully updated.' }
        format.json { render :show, status: :ok, location: @child_record }
      else
        format.html { render :edit }
        format.json { render json: @child_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /child_records/1
  # DELETE /child_records/1.json
  def destroy
    @child_record.destroy
    respond_to do |format|
      format.html { redirect_to child_records_url, notice: 'child record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_child_record
      @child_record = childRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def child_record_params
      params.fetch(:child_record, {})
    end
end
