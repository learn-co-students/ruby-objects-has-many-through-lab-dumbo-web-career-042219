class Appointment

  @@all = []

  attr_accessor :date, :patient, :doctor

  def initialize(date, patient, doctor)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end


end
