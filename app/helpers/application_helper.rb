module ApplicationHelper

	def add_color_and_tool_tip(row,col)
		colored = Color.where(row_n:row).where(col_n:col).last 
		colored.present? ? "style=background-color:#{colored.color} "+"data-username=#{colored.username} data-ontime=#{colored.created_at.strftime("%I:%m:%S")} data-withdate=#{colored.created_at.strftime("%m/%d/%Y")}" : ""
	end
end
