class Doctor

  @@all = []



  def self.all
    @@all
  end

  def new_appointment(patient, date)
    new_a = Appointment.new

  end

  def appointments
    Appointment.all.select do |app|
      app.doctor == self
    end
  end

  def patients
    appointments.map do |app|
      app.patient
    end
  end

  end

end
