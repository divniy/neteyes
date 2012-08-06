class ProjectController < ApplicationController
  helper 'joosy/sprockets'

  def index
    render nothing: true, layout: 'project'
  end
end
