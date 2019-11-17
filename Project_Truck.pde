import de.fhpotsdam.unfolding.*;
import de.fhpotsdam.unfolding.geo.*;
import de.fhpotsdam.unfolding.utils.*;

/**
 * Shows basic information about the map. Can be used for debugging purposes.
 */

UnfoldingMap map;
DebugDisplay debugDisplay;

void setup() {
  size(1024, 512, P3D);

  map = new UnfoldingMap(this, "TRUCK");
  map.zoomAndPanTo(new Location(52.5f, 13.4f),5);
  MapUtils.createDefaultEventDispatcher(this, map);

  // Create debug display (optional: specify position and size)
  debugDisplay = new DebugDisplay(this, map);
}

void draw() {
  background(0);
  map.draw();
  debugDisplay.draw();
}
