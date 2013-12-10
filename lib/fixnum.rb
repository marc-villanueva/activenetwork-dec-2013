class Fixnum

	def to_bottle_number
    begin
      Object.const_get('BottleNumber' + self.to_s)
    rescue NameError
      BottleNumber
    end.new(self)
	end

end