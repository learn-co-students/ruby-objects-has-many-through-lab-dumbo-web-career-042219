class Patient

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

def new_appointment(doctor,date)
  Appointment.new(self,date,doctor)
end

def appointments
  Appointment.all.select do |date|
    date.patient == self
  end
end

def doctors
  Appointment.all.map do |date|
    date.doctor
  end
end
# #new_appointment
#   given a doctor and date, creates a new appointment belonging to that patient (FAILED - 23)
# #appointments
#   has many appointments (FAILED - 25)
# #doctors
#   has many doctors through appointments (FAILED - 26)

end
