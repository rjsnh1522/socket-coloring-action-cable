class HomesController < ApplicationController
	before_action :find_by_row_col,except:[:index]

	def index
		@color = Color.all
	end

	def create 
		if @color.present?
			@color.update_attributes(color_params) if @color.username != params[:color][:username] || @color.color != params[:color][:color]
		else
			@color = Color.create!(color_params)
		end
		 HomesChannel.broadcast(@color,'create')
	end

	def leader_board
		binding.pry
	end

	def find_by_row_col
		@color= Color.where(row_n:params[:color][:row_n]).where(col_n:params[:color][:col_n]).last
	end


	private
	def color_params
		params.require(:color).permit(:username,:row_n,:col_n,:color)
	end
end
