# coding: utf-8
class BirthdaysController < ApplicationController

  def new
    @birthday = current_user.birthdays.build
  end

  def create
    @birthday = current_user.birthdays.new(params[:birthday])
    if @birthday.save
      redirect_to current_user, notice: 'Urodziny dodane :-)'
    else
      render 'new', alert: 'Popraw błędy.'
    end
  end

  def edit
    @birthday = current_user.birthdays.find(params[:id])
  end

  def update
    @birthday = current_user.birthdays.find(params[:id])
    if @birthday.update_attributes(params[:birthday])
      redirect_to current_user, notice: 'Urodziny zmienione :-)'
    else
      render 'edit', alert: 'Popraw błędy.'
    end
  end

  def destroy
    @birthday = current_user.birthdays.find(params[:id])
    @birthday.destroy
    render 'users/show'
    # redirect_to current_user
  end
end
