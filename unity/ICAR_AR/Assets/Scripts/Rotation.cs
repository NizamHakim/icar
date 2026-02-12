using UnityEngine;

public class Rotation : MonoBehaviour
{
    private float rotationSpeed = 0.5f;
    private float targetRotation;
    private float currentRotation = 0f;

    public void Start()
    {
        currentRotation = transform.localEulerAngles.y;
        targetRotation = currentRotation;
    }

    void Update()
    {
        if (Input.touchCount == 2)
        {
            Touch touch0 = Input.GetTouch(0);
            Touch touch1 = Input.GetTouch(1);

            Vector2 touch0PrevPos = touch0.position - touch0.deltaPosition;
            Vector2 touch1PrevPos = touch1.position - touch1.deltaPosition;

            Vector2 prevDir = touch0PrevPos - touch1PrevPos;
            Vector2 currDir = touch0.position - touch1.position;

            float angle = Vector2.SignedAngle(prevDir, currDir);

            targetRotation -= angle * rotationSpeed;
            transform.rotation = Quaternion.Euler(0, targetRotation, 0);
        }
    }
}
