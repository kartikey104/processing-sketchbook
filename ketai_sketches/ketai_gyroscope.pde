import ketai.sensors.*;

KetaiSensor sensor;
float rotationX, rotationY, rotationZ;

void setup()
{
 fullScreen();
  sensor = new KetaiSensor(this);
  sensor.start();
  fullScreen();
  orientation(PORTRAIT);

  textAlign(CENTER, CENTER);
  textSize(displayDensity * 24);
}

void draw()
{
  background(78, 93, 75);
  text("Gyroscope: \n" + 
    "x: " + nfp(rotationX, 1, 3) + "\n" +
    "y: " + nfp(rotationY, 1, 3) + "\n" +
    "z: " + nfp(rotationZ, 1, 3), 0, 0, width, height);
}

void onGyroscopeEvent(float x, float y, float z)
{
  rotationX = x;
  rotationY = y;
  rotationZ = z;
}
