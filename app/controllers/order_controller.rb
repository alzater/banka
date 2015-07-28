class OrderController < ApplicationController
	def new
		order = Order.new
		order.name = params[:name]
		order.phone = params[:phone]
		order.text = params[:text]
    order.period = params[:period]
    order.qpersons = params[:qpersons]
    order.time = Time.now
		order.save
    OrderMailer.new_order(order).deliver
		render nothing: true
	end
end
