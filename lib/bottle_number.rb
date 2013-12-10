require 'delegate'

class BottleNumber < SimpleDelegator

  def pred
    __getobj__.pred.to_bottle_number
  end

  def to_s
    "#{inventory} #{container}"
  end

	def container
		'bottles'
	end

	def inventory
		__getobj__.to_s
	end

	def action
		'Take one down and pass it around'
	end

end