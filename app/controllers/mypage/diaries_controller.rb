class Mypage::DiariesController < ApplicationController
  before_action :set_diary, only: %i[ show edit update destroy ]

  # GET /diaries or /diaries.json
  def index
    @diaries = Diary.order(created_at: :desc)
  end

  # GET /diaries/1 or /diaries/1.json
  def show
  end
  
  # GET /diaries/new
  def new
    @diary = Diary.new
    @date = params[:date] ? Date.parse(params[:date]) : Time.zone.now
  end

  # GET /diaries/1/edit
  def edit
  end

  # POST /diaries or /diaries.json
  def create
    @kitchen_garden = current_user.kitchen_garden
    @diary = Diary.new(diary_params)
    @diary.kitchen_garden_id = @kitchen_garden.id

    respond_to do |format|
      if @diary.save
        format.html { redirect_to mypage_diary_url(@diary), notice: "Diary was successfully created." }
        format.json { render :show, status: :created, location: @diary }
        post = current_user.posts.new(content: "#{current_user.profile.name}が日誌を新たに作成しました。")
        post.save
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @diary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diaries/1 or /diaries/1.json
  def update
    respond_to do |format|
      if @diary.update(diary_params)
        format.html { redirect_to diary_url(@diary), notice: "Diary was successfully updated." }
        format.json { render :show, status: :ok, location: @diary }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @diary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diaries/1 or /diaries/1.json
  def destroy
    @diary.destroy

    respond_to do |format|
      format.html { redirect_to mypage_diaries_url, notice: "Diary was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diary
      @diary = Diary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def diary_params
      params.require(:diary).permit(:title, :body, :created_at)
    end
end
