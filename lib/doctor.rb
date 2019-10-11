class Doctor
 
  attr_accessor :name
 
  @@all = []
 
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(patient, time)
    Appointment.new(time, patient, self)
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end
  
  def patients
    appointments.map {|appointment| appointment.patient}
  end
 
  def self.all
    @@all
  end
 end