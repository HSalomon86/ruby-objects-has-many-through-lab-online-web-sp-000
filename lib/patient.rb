class Patient

  @@all = []

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new()
  end

  def appointments
    Appointment.all.select do |app|
      app.patient == self
    end
  end

  def doctors
    appointments.map do |app|
      app.doctor
    end
  end

end
