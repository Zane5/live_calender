class MeetingController < ApplicationController
  def index
    @partners = User.all.select { |u| u.is_partner }
    @entrepreneur = User.all.select { |u| u.is_entrepreneur }
  end
end
