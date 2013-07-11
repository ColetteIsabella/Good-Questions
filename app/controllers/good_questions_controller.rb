class GoodQuestionsController < ApplicationController
  # GET /good_questions
  # GET /good_questions.json
  def index
    @good_questions = GoodQuestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @good_questions }
    end
  end

  # GET /good_questions/1
  # GET /good_questions/1.json
  def show
    @good_question = GoodQuestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @good_question }
    end
  end

  # GET /good_questions/new
  # GET /good_questions/new.json
  def new
    @good_question = GoodQuestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @good_question }
    end
  end

  # GET /good_questions/1/edit
  def edit
    @good_question = GoodQuestion.find(params[:id])
  end

  # POST /good_questions
  # POST /good_questions.json
  def create
    @good_question = GoodQuestion.new(params[:good_question])

    respond_to do |format|
      if @good_question.save
        format.html { redirect_to @good_question, notice: 'Good question was successfully created.' }
        format.json { render json: @good_question, status: :created, location: @good_question }
      else
        format.html { render action: "new" }
        format.json { render json: @good_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /good_questions/1
  # PUT /good_questions/1.json
  def update
    @good_question = GoodQuestion.find(params[:id])

    respond_to do |format|
      if @good_question.update_attributes(params[:good_question])
        format.html { redirect_to @good_question, notice: 'Good question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @good_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /good_questions/1
  # DELETE /good_questions/1.json
  def destroy
    @good_question = GoodQuestion.find(params[:id])
    @good_question.destroy

    respond_to do |format|
      format.html { redirect_to good_questions_url }
      format.json { head :no_content }
    end
  end
end
