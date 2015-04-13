SCHEDULE = [
  GTFS::Source.build( File.join(Rails.root, "files", "path-nj-us.zip"), {strict: false} ),
  GTFS::Source.build( File.join(Rails.root, "files", "rail_data.zip"), {strict: false} ),
  GTFS::Source.build( File.join(Rails.root, "files", "bus_data.zip"), {strict: false} )
]

