class LocomotiveEngineer
  def self.generate_list_of_wagons(*args)
    args
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    first, second, third, *middle = each_wagons_id
    combined_ids = third, *missing_wagons, *middle, first, second
  end

  def self.add_missing_stops(route_info, **stops)
    route_info[:stops] = stops.values
    route_info
  end

  def self.extend_route_information(route, more_route_information)
    combined_info = {**route, **more_route_information}
  end
end
