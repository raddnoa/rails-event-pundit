class ActiveSupport::TimeWithZone
  def as_json(options={})
    self.to_time.to_i
  end
end
