#encoding: UTF-8
class OrderMailer < ActionMailer::Base
  default from: "from@example.com"
  
  def new_order(order)
    @order = order
    subject_string = "Новый заказ: № " + order.id.to_s
    mail(:to => "alzater@mail.ru", :subject => subject_string)
  end
end
