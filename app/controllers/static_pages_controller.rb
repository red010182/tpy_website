class StaticPagesController < ApplicationController
  def home
  	@page_title = "Home"
  	
  end

  def biography
  	@page_title = "Biography"
  	@basic_table = 
  		[
  			["Name","Gender","Age","Milatary Service"],
  			["Tsao Po-Yao","Male","25~26","Done"]
  		]
  	@education_table = 
  		[
			["Degree","School","Depart","Duration"],
			["BS","National Central University","Electronic Engineering","2004~2008"],
			["MS","National Central University","Electronic Engineering","2008~2011"]
        ]

	@working_experience_table = 
		[
			[]
		]					  
		
  end

  def works
  	@page_title = "Works"
  end

  def future_plan
  	@page_title = "Future Plan"
  end

  def quiz
  	@page_title = "Quiz"
  end

  def focus
  	@page_title = "Focus"
  end


  def contact
  	@page_title = "Contact"
  end

  def cyborg
  	@page_title = "Test Page"
  end

  
	

end
