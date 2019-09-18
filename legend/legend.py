# OpenArdenneMap - Pilot mapnik with python - April 2018

from mapnik import *

# The mapFile is generated using carto from cartoCSS files.
mapFile = 'legend.xml'

# The mapOutput can be have different extension; png, pdf, svg, ...
mapOutput = 'legend.pdf'

map_x = 3000
map_y = 1300
m = Map(map_x,map_y)
load_map(m, mapFile)

# Bounding box (expressed in dummy units)
xmin = 0
ymin = 0
xmax = map_x
ymax = map_y

bbox = (Envelope(xmin, ymin, xmax, ymax))

m.zoom_to_box(bbox)

# Export to mapOutput
render_to_file(m, mapOutput)