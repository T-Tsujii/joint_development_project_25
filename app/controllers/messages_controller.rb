class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    Message.create(message_params)
  end

  def show
    @message = Message.find(params[:id])
  end

  private

  # 何でもかんでも登録出来ないようにする 他では使わないのでプライベートにする

  def message_params
    params.require(:message).permit(:title, :content)
  end
end
