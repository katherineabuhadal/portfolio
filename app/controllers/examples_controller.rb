class ExamplesController < ApplicationController
def index
  @examples = Example.all

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

def delete
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
