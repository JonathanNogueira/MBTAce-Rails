object @gtfs_route


attributes :route_id, :agency_id, :route_short_name, :route_long_name, :route_desc, :route_type, :route_url, :route_color, :route_text_color

child :gtfs_trips do 
     
     attributes :service_id, :trip_id, :trip_headsign, :direction_id, :block_id, :shape_id
end