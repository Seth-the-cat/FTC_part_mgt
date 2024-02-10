class PartsAssignmentsController < ApplicationController
  before_action :set_parts_assignment, only: %i[ show edit update destroy ]

  # GET /parts_assignments or /parts_assignments.json
  def index
    @parts_assignments = PartsAssignment.all
  end

  # GET /parts_assignments/1 or /parts_assignments/1.json
  def show
  end

  # GET /parts_assignments/new
  def new
    @parts_assignment = PartsAssignment.new
    if params[:part_id]
      @part = Part.find(params[:part_id])
    end
  end

  # GET /parts_assignments/1/edit
  def edit
  end

  # POST /parts_assignments or /parts_assignments.json
  def create
    @parts_assignment = PartsAssignment.new(parts_assignment_params)

    respond_to do |format|
      if @parts_assignment.save
        format.html { redirect_to parts_assignment_url(@parts_assignment), notice: "Parts assignment was successfully created." }
        format.json { render :show, status: :created, location: @parts_assignment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @parts_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parts_assignments/1 or /parts_assignments/1.json
  def update
    respond_to do |format|
      if @parts_assignment.update(parts_assignment_params)
        format.html { redirect_to parts_assignment_url(@parts_assignment), notice: "Parts assignment was successfully updated." }
        format.json { render :show, status: :ok, location: @parts_assignment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @parts_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parts_assignments/1 or /parts_assignments/1.json
  def destroy
    @parts_assignment.destroy!

    respond_to do |format|
      format.html { redirect_to parts_assignments_url, notice: "Parts assignment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parts_assignment
      @parts_assignment = PartsAssignment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def parts_assignment_params
      params.require(:parts_assignment).permit(:part_id, :project_id)
    end
end
