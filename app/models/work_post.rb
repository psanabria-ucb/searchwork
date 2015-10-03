class WorkPost < ActiveRecord::Base
	has_many :contacts, dependent: :delete_all
end
