class Doctor
  
  attr_reader :name, :patient, :appointment
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all 
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end
  
  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end
  
  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end
  
  
  
end