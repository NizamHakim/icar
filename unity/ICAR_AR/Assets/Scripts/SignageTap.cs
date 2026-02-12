using FlutterUnityIntegration;
using UnityEngine;

public class SignageTap : MonoBehaviour
{
    public int signageId;

    void Update()
    {
        if (
            Input.GetMouseButtonDown(0)
            || (Input.touchCount > 0 && Input.GetTouch(0).phase == TouchPhase.Began)
        )
        {
            Vector3 inputPosition = Input.mousePosition;

            if (Input.touchCount > 0)
            {
                inputPosition = Input.GetTouch(0).position;
            }

            Ray ray = Camera.main.ScreenPointToRay(inputPosition);
            RaycastHit hit;

            if (Physics.Raycast(ray, out hit))
            {
                if (hit.collider.gameObject == gameObject)
                {
                    UnityMessageManager.Instance.SendMessageToFlutter(signageId.ToString());
                }
            }
        }
    }
}
