class OrderController < ApplicationController
	def new
		order = Order.new
		order.name = params[:name]
		order.phone = params[:phone]
		order.text = params[:text]
                order.qpersons = params[:qpersons]
		order.save
                OrderMailer.new_order(order).deliver
		render nothing: true
	end
end
