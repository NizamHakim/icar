using UnityEngine;

public class LatLonMapper : MonoBehaviour
{
    // unity 0,20,0
    private float originLat = -7.283303627372999f;
    private float originLon = 112.79488130067108f;
    private float metersPerDegreeLat = 111000f;
    private float metersPerDegreeLon = 110900f;
    public float unityUnitsPerMeter = 1f;

    // route is at y = 0, put object above route
    public float constantY = 20f;

    public Vector3 LatLonToUnity(float latitude, float longitude)
    {
        float deltaLon = longitude - originLon;
        float deltaLat = latitude - originLat;

        float xMeters = deltaLon * metersPerDegreeLon;
        float zMeters = deltaLat * metersPerDegreeLat;

        float x = xMeters * unityUnitsPerMeter;
        float z = zMeters * unityUnitsPerMeter;

        return new Vector3(x, constantY, z);
    }
}
