class Singleton
  private_class_methods(:new, :dup, :clone)

  def self.instance
    @single ||= new
  end

end