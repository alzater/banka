#encoding: UTF-8
class OrderMailer < ActionMailer::Base
  default from: "banydom@gmail.com"
  
  def new_order(order)
    @order = order
    subject_string = "Новый заказ: № " + order.id.to_s
    mail(:to => "medvejiiugol@yandex.ru", :subject => subject_string)
  end
end
