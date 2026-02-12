using UnityEngine;

[RequireComponent(typeof(FlutterMessageHandler))]
public class MockMessage : MonoBehaviour
{
    public string objectName;
    public Position nextPosition;
    private FlutterMessageHandler flutterMessageHandler;

    void Start()
    {
        flutterMessageHandler = GetComponent<FlutterMessageHandler>();
    }

    void Update()
    {
        FlutterMessage flutterMessage = new FlutterMessage
        {
            objectName = objectName,
            nextPosition = nextPosition,
        };
        flutterMessageHandler.MessageReceiver(JsonUtility.ToJson(flutterMessage));
    }
}
