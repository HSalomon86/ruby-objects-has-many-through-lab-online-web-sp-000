class Patient

  @@all = []

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new()
  end

end
