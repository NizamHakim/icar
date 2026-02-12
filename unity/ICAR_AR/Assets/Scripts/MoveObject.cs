using UnityEngine;

public class MoveObject : MonoBehaviour
{
    public float speed = 400f;
    private LatLonMapper latLonMapper;
    private Vector3 destination;
    private float heading;

    void Awake()
    {
        latLonMapper = GameObject.FindGameObjectWithTag("UtilScripts").GetComponent<LatLonMapper>();
    }

    void Update()
    {
        if (transform.localPosition != destination)
        {
            transform.localPosition = Vector3.MoveTowards(
                transform.localPosition,
                destination,
                speed * Time.deltaTime
            );
            transform.rotation = Quaternion.Euler(0, heading, 0);
        }
    }

    public void Move(Position nextPosition)
    {
        destination = latLonMapper.LatLonToUnity(nextPosition.latitude, nextPosition.longitude);
        heading = nextPosition.heading;
    }
}
