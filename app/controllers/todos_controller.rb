class TodosController < AdminController
  
  @@model = Todo
  

  def create
    super(model_params)
  end

  def update
    super(model_params)
  end

  def destroy
    super(todos_url)
  end

  private
    def model_params
      params.require(:todo).permit(:title, :notes)
    end
end
