class Doctor
 
  attr_accessor :name
 
  @@all = []
 
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(name, genre)
    Appointment.new(name, self, genre)
  end
  
  def appointments
    appointment.all.select do |appointment|
      appointment.artist == self
    end
  end
  
  def genres
    appointments.map {|appointment| appointment.genre}
  end
 
  def self.all
    @@all
  end
 end