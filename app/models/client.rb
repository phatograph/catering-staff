class Client < User
  def self.client_select
    all.collect {|c| [ c.full_name, c.id ] }
  end
end
