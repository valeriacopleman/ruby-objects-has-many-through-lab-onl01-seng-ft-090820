class Doctor 
  
  attr_accessor :name, :appointment, :patient 
  
  @@all = []

 def initialize(name)
    @name = name
    @@all << self
  end
  
  def appointments
    Appointment.all.each {|appointment| appointment.doctor == self}
  end 

  def self.all
    @@all
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
