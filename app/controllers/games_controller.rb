class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  # GET /games
  # GET /games.json
  def index
    @games = Game.all
  end

  # GET /games/1
  # GET /games/1.json
  def show
  end

  # GET /games/new
  def new
    if session[:user_id] != nil
        @game = Game.new
    else
        redirect_to root_path
    end
  end

  def new_like
      game_id = params.game_id
      game = Game.find(id: game_id)
      likeds = Like.find_by_liked(game.user_id)
      likers = Like.find_by_liker(session[:user_id])
      if !likeds.length && !likers.length
          n = Like.new({liker: session[:user_id], liked: game.user_id, game: game.id})
          n.save
      else
          redirect_to 'match'
      end
  end

  def match
      @game1 = Game.find(params[:liker])
      @game2 = Game.find(params[:liked])

      @user1 = User.find(@game1.user_id)
      @user2 = User.find(@game2.user_id)
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games
  # POST /games.json
  def create
    @game = Game.new(game_params)
    @game.user_id = session[:user_id]

    respond_to do |format|
      if @game.save
        format.html { redirect_to user_path(session[:user_id]), notice: 'Game was successfully created.' }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games/1
  # PATCH/PUT /games/1.json
  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to @game, notice: 'Game was successfully updated.' }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url, notice: 'Game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      parm = params.require(:game).permit(:name, :description, :platform, :category)
      parm[:platform] = parm[:platform].to_i
      parm[:category] = parm[:category].to_i
      parm
    end
end
