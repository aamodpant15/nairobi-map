/* global d3 */
const svg = d3.select("#map");
svg.append("text").attr("x", 24).attr("y", 40).attr("fill", "#444")
  .text("Basemap lands after nairobi_wards.geojson is built.");
