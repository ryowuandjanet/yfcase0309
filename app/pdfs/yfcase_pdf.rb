require 'prawn/table'
class YfcasePdf < Prawn::Document
	def initialize(yfcase)
		super(top_margin: 70)
		@yfcase = yfcase
		yfcase_title
		line_items
	end

	def yfcase_title
		text "Post \##{@yfcase.casenumber}",size: 30,style: :bold
	end

	def line_items
		move_down 20
		table yfcase_id_all do
			row(0).font_style = :bold
			columns(1..2).algin = :right
			self.row_colors = ["DDDDDD","FFFFFF"]
			self.column_widths =100
			self.header = true
		end
	end

	def yfcase_id_all
		[["ID","TITLE"]] +
		[[@yfcase.id,@yfcase.address]] 
	end

end
