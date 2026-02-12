using FlutterUnityIntegration;
using UnityEngine;

public class FlutterMessageHandler : MonoBehaviour
{
    public Transform routeScene;
    public GameObject car1Prefabs;
    public GameObject car2Prefabs;
    public GameObject userPrefabs;

    public void MessageReceiver(string message)
    {
        FlutterMessage messageData = JsonUtility.FromJson<FlutterMessage>(message);
        HandleMessage(messageData.objectName, messageData.nextPosition);
    }

    void HandleMessage(string objectName, Position position)
    {
        GameObject gameObject = GameObject.Find(objectName);
        if (gameObject == null)
        {
            gameObject = InstantiateObject(objectName);
        }

        MoveObject moveObject = gameObject.GetComponent<MoveObject>();
        moveObject.Move(position);
    }

    GameObject InstantiateObject(string objectName)
    {
        GameObject instance;
        switch (objectName)
        {
            case "Car1":
            {
                instance = Instantiate(car1Prefabs, routeScene);
                instance.name = objectName;
                return instance;
            }
            case "Car2":
            {
                instance = Instantiate(car2Prefabs, routeScene);
                instance.name = objectName;
                return instance;
            }
            default:
            {
                instance = Instantiate(userPrefabs, routeScene);
                instance.name = objectName;
                return instance;
            }
        }
    }
}

[System.Serializable]
public struct FlutterMessage
{
    public string objectName;
    public Position nextPosition;
}
