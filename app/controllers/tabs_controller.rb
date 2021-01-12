class TabsController < ApplicationController
  before_action :set_tab

  def show
  end

  private

  def set_tab
    @tab = Tab.find(params[:id])
  end

end