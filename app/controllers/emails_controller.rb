class EmailsController < ApplicationController
  def index
  	@email = Email.all
  end

  def show
    @email = Email.find(params[:id])
    respond_to do |format|
        format.html { redirect_to root_path }
        format.js {}
    end
  end

  def create
  	@email = Email.new(object:Faker::Book.title, body:"oeofjepofjepoijepojfpoepjfzn zekfziopjfez  ezi feoizfjo")
    if @email.save
      respond_to do |format|
          format.html { redirect_to root_path }
          format.js {}
      end
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    respond_to do |format|
        format.html {}
        format.js { redirect_to root_path }
    end
  end
end
