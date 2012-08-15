module StaticPagesHelper
	def full_title(page_title)
		base_title = "Tpy's Website"
		if page_title.empty?
		base_title
		else
		"#{base_title} | #{page_title}"
		end
	end

	def nav_search_box(placeholder_text)
		
	end
=begin		
	def InitDB

	  	@projects = 
	  	[
	  		{:name =>"Peggy AI", :language => "C", :course => "Data Structure", :description => "n/a"},
	  		{:name =>"UWB Channel", :language => "C", :course => "Data Structure", :description => "n/a"},
	  		{:name =>"recipe organization", :language => "C", :course => "n/a", :description => "n/a"},
	  		
	  		{:name =>"FFT", :language => "Verilog", :course => "", :description => "n/a"}
	  	]

	  	@projects.each { |project|
			@new_project = Project.new
			@new_project.name = project[:name]
			@new_project.language = project[:language]
			@new_project.course = project[:course]
			@new_project.description = project[:description]
			@new_project.save



		}
	end
=end

	def PackageWithTag(tag,element,*attri)
		if attri.empty?
			element.map{ |e| 
				"<#{tag}>#{e}</#{tag}>"
			}.join
		else
			attri = attri.first
			element.map{ |e| 
				"<#{tag}#{attri[:value].map { |v| " #{attri[:name]}=\"#{v}\"" }}>#{e}</#{tag}>"
			}.join unless attri.nil?
		end		
	end

	def ToTable(table_array, table_class)
		headers = "<tr>#{PackageWithTag('th',table_array[0])}</tr>" if table_array[0].any?
		cells = table_array[1..table_array.count].map{ |each_row|
			"<tr>#{PackageWithTag('td',each_row)}</tr>"				
		}.join

		table = "<table class=\"#{table_class}\"><thead>#{headers}</thead><tbody>#{cells}</tbody></table>"
	end

	

	def ToList(parameters)
		
	end
end
