class Patient

	attr_reader :patient_name

	@@all = []

	def initialize(patient_name)
		@patient_name = patient_name
		@@all << self
	end

	def self.all
		@@all
	end

	def new_appointment(doctor, date)
		Appointment.new(self, date, doctor)
	end

	def appointments
		Appointment.all.select do |appointment|
		appointment.patient == self
	end
end

	def doctors
		self.appointments.map do |appointment|
		appointment.doctor
	end
end


end