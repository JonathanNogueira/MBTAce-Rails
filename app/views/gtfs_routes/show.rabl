object @gtfs_route


attributes :route_id, :route_short_name, :route_long_name, :route_desc, :route_url, :route_color, :route_text_color

child :gtfs_route_type => :route_type do 

      attributes :route_type => :type_id
      attributes :description

end

child :gtfs_agency => :agency do 
	  
	  attributes :agency_id, :agency_name, :agency_url, :agency_timezone, :agency_lang, :agency_phone, :agency_fare_url

end

child :gtfs_trips do 

		attributes :route_id, :service_id, :trip_id, :direction_id, :shape_id
		
end