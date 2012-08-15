class String
	def add_tag tag, *attri
		if attri.empty?
			self.map{ |e| 
				"<#{tag}>#{e}</#{tag}>"
			}.join
		else
			attri = attri.first
			self.map{ |e| 
				"<#{tag}#{attri[:value].map { |v| " #{attri[:name]}=\"#{v}\"" }}>#{e}</#{tag}>"
			}.join unless attri.nil?
		end
	end
end



p "abc".add_tag('li').add_tag('ul',{:name=>"class", :value => "span4"})