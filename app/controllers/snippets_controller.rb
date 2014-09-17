class SnippetsController < ApplicationController
  load_and_authorize_resource

  has_scope :search
  # GET /snippets
  # GET /snippets.json
  def index
    @snippets = apply_scopes(Snippet).all
  end

  # GET /snippets/1
  # GET /snippets/1.json
  def show
  end

  # GET /snippets/new
  def new
    @snippet = Snippet.new
    authorize! :create, @snippet
  end

  # GET /snippets/1/edit
  def edit
    authorize! :edit, @snippet
  end

  # POST /snippets
  # POST /snippets.json
  def create
    @snippet = current_user.snippets.new(snippet_params)
    authorize! :create, @snippet

    respond_to do |format|
      if @snippet.save
        format.html { redirect_to @snippet, notice: 'Snippet was successfully created.' }
        format.json { render action: 'show', status: :created, location: @snippet }
      else
        format.html { render action: 'new' }
        format.json { render json: @snippet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /snippets/1
  # PATCH/PUT /snippets/1.json
  def update
    authorize! :update, @snippet
    respond_to do |format|
      if @snippet.update(snippet_params)
        format.html { redirect_to @snippet, notice: 'Snippet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @snippet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snippets/1
  # DELETE /snippets/1.json
  def destroy
    authorize! :destroy, @snippet
    @snippet.destroy
    respond_to do |format|
      format.html { redirect_to snippets_url }
      format.json { head :no_content }
    end
  end

  private


    # Never trust parameters from the scary internet, only allow the white list through.
    def snippet_params
      params.require(:snippet).permit(:code, :title, :price, :language, :description)
    end
end
