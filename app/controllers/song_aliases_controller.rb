class SongAliasesController < ApplicationController
  before_action :set_song_alias, only: [:show, :edit, :update, :destroy]

  # GET /song_aliases
  # GET /song_aliases.json
  def index
    @song_aliases = SongAlias.all
  end

  # GET /song_aliases/1
  # GET /song_aliases/1.json
  def show
  end

  # GET /song_aliases/new
  def new
    @song_alias = SongAlias.new
  end

  # GET /song_aliases/1/edit
  def edit
  end

  # POST /song_aliases
  # POST /song_aliases.json
  def create
    @song_alias = SongAlias.new(song_alias_params)

    respond_to do |format|
      if @song_alias.save
        format.html { redirect_to @song_alias, notice: 'Song alias was successfully created.' }
        format.json { render :show, status: :created, location: @song_alias }
      else
        format.html { render :new }
        format.json { render json: @song_alias.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /song_aliases/1
  # PATCH/PUT /song_aliases/1.json
  def update
    respond_to do |format|
      if @song_alias.update(song_alias_params)
        format.html { redirect_to @song_alias, notice: 'Song alias was successfully updated.' }
        format.json { render :show, status: :ok, location: @song_alias }
      else
        format.html { render :edit }
        format.json { render json: @song_alias.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /song_aliases/1
  # DELETE /song_aliases/1.json
  def destroy
    @song_alias.destroy
    respond_to do |format|
      format.html { redirect_to song_aliases_url, notice: 'Song alias was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song_alias
      @song_alias = SongAlias.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_alias_params
      params.require(:song_alias).permit(:song_id, :alias)
    end
end
