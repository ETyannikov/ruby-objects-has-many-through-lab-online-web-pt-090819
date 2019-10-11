class Doctor
 
  attr_accessor :name
 
  @@all = []
 
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(time, patient)
    Appointment.new(time, patient, self)
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.artist == self
    end
  end
  
  def genres
    Appointments.map {|appointment| appointment.genre}
  end
 
  def self.all
    @@all
  end
 end