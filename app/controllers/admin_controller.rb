class AdminController < AuthController
  before_action :set_model, only: [:show, :edit, :update, :destroy]
  @@model = nil

  # GET /todos
  # GET /todos.json
  def index
    @todos = @@model.all
  end

  # GET /controller/1
  # GET /controller/1.json
  def show
  end

  # GET /controller/new
  def new
  	@todo = @@model.new
  end

  # GET /controller/1/edit
  def edit
  end

  # POST /todos
  # POST /todos.json
  def create(params)
    @todo = @@model.new(params)

    respond_to do |format|
      if @todo.save
        format.html { redirect_to @todo, notice: 'Todo was successfully created.' }
        format.json { render :show, status: :created, location: @todo }
      else
        format.html { render :new }
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todos/1
  # PATCH/PUT /todos/1.json
  def update(params)
    respond_to do |format|
      if @todo.update(params)
        format.html { redirect_to @todo, notice: 'Todo was successfully updated.' }
        format.json { render :show, status: :ok, location: @todo }
      else
        format.html { render :edit }
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todos/1
  # DELETE /todos/1.json
  def destroy(_url)
    @todo.destroy
    respond_to do |format|
      format.html { redirect_to _url, notice: 'Todo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_model
      @todo = @@model.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
	#Private to Global
	
end
