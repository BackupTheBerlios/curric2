require 'digest/sha1'

class Teacher < ActiveRecord::Base
	has_many :subjects

#   def departments
#	{
#		return nil
#	}

    def self.authenticate(name, password)
    return find(:first, :conditions => ["name = ? and password = ?", name, Digest::SHA1.hexdigest(password)])
    end
end
