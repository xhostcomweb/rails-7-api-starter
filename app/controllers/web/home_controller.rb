# frozen_string_literal: true

module Web
  class HomeController < ApplicationController
    def index
      render plain: 'API Starter!'
    end
  end
end
