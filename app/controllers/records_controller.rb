class RecordsController < ApplicationController
  def index
    @record = Record.last
  end
end
