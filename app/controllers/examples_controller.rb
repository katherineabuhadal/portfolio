class ExamplesController < ApplicationController
def index
  @examples = Example.all

end

def show
  @example = Example.find(params[:id])
end

def new
  @example = Example.new
end

def create
  @example = Example.create(example_params)
  redirect_to root_path
end

def edit
end

def update
end

def destroy
  @example = Example.find(params[:id])
  @example.destroy
  redirect_to root_path
end

private

def example_params
  params.require(:example).permit(
    :title,
    :description,
    :url,
  )
end

end
