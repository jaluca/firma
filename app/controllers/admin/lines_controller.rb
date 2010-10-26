class Admin::LinesController < ApplicationController
  def index
    @lines = Line.all
  end
end
