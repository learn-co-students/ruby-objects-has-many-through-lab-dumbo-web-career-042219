class Doctor

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date,patient)
   Appointment.new(date, patient, self)
  end


def appointments
  Appointment.all.select do |date|
    date.doctor == self
  end
end

def patients
  Appointment.all.map do |date|
    date.patient
  end
end
  # #new_appointment
  #   given a date and a patient, creates a new appointment (FAILED - 15)

  # #patients
  #   has many patients, through appointments (FAILED - 17)

end
