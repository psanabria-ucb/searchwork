class StaticPagesController < ApplicationController
  http_basic_authenticate_with name: "tarija", password: "tarija", only: :dip_tarija
  def index
  end

  def dip_tarija
  end
end
