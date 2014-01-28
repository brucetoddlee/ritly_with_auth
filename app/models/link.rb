# == Schema Information
#
# Table name: links
#
#  id          :integer          not null, primary key
#  input_link  :string(255)
#  output_code :string(255)
#  count       :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Link < ActiveRecord::Base
end
