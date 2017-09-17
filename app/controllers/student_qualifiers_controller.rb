class StudentQualifiersController < ApplicationController
  before_action :set_student_qualifier, only: [:show, :edit, :update, :destroy]

  # GET /student_qualifiers
  # GET /student_qualifiers.json
  def index
    @student_qualifiers = StudentQualifier.all
  end

  # GET /student_qualifiers/1
  # GET /student_qualifiers/1.json
  def show
  end

  # GET /student_qualifiers/new
  def new
    @student_qualifier = StudentQualifier.new
  end

  # GET /student_qualifiers/1/edit
  def edit
  end

  # POST /student_qualifiers
  # POST /student_qualifiers.json
  def create
    @student_qualifier = StudentQualifier.new(student_qualifier_params)

    respond_to do |format|
      if @student_qualifier.save
        format.html { redirect_to @student_qualifier, notice: 'Student qualifier was successfully created.' }
        format.json { render :show, status: :created, location: @student_qualifier }
      else
        format.html { render :new }
        format.json { render json: @student_qualifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_qualifiers/1
  # PATCH/PUT /student_qualifiers/1.json
  def update
    respond_to do |format|
      if @student_qualifier.update(student_qualifier_params)
        format.html { redirect_to @student_qualifier, notice: 'Student qualifier was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_qualifier }
      else
        format.html { render :edit }
        format.json { render json: @student_qualifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_qualifiers/1
  # DELETE /student_qualifiers/1.json
  def destroy
    @student_qualifier.destroy
    respond_to do |format|
      format.html { redirect_to student_qualifiers_url, notice: 'Student qualifier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_qualifier
      @student_qualifier = StudentQualifier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_qualifier_params
      params.fetch(:student_qualifier, {})
    end
end
