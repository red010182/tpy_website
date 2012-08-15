# == Schema Information
#
# Table name: projects
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  description   :string(255)
#  language      :string(255)
#  course        :string(255)
#  featuredimage :string(255)
#  etc           :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Project < ActiveRecord::Base
  attr_accessible :course, :description, :etc, :featuredimage, :language, :name
end
