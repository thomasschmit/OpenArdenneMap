SELECT geometry, type, sport,
CASE WHEN (ST_NPoints(l.geometry) = 5) THEN
(CASE WHEN (ST_MaxDistance(ST_PointN(ST_ExteriorRing(l.geometry),1), ST_PointN(ST_ExteriorRing(l.geometry),2)) > ST_MaxDistance(ST_PointN(ST_ExteriorRing(l.geometry),1), ST_PointN(ST_ExteriorRing(l.geometry),3)))
  THEN CAST(90+degrees(ST_Azimuth(ST_PointN(ST_ExteriorRing(l.geometry),1), ST_PointN(ST_ExteriorRing(l.geometry),2))) AS VARCHAR(255))
  ELSE CAST(90+degrees(ST_Azimuth(ST_PointN(ST_ExteriorRing(l.geometry),1), ST_PointN(ST_ExteriorRing(l.geometry),2))) AS VARCHAR(255))
END)
END AS orientation
FROM osm_extralandusages AS l WHERE type = 'pitch' and sport = 'soccer'
