using UnityEngine;

public class Zoom : MonoBehaviour
{
    private float minScale = 0.5f;
    private float maxScale = 3.0f;
    private float zoomSpeed = 0.0007f;

    private Vector3 initialScale;
    private Vector3 targetScale;
    private float currentScale = 1f;

    void Start()
    {
        initialScale = transform.localScale;
        targetScale = initialScale;
    }

    void Update()
    {
        if (Input.touchCount == 2)
        {
            Touch touch0 = Input.GetTouch(0);
            Touch touch1 = Input.GetTouch(1);

            Vector2 touch0PrevPos = touch0.position - touch0.deltaPosition;
            Vector2 touch1PrevPos = touch1.position - touch1.deltaPosition;

            float prevTouchDeltaMag = (touch0PrevPos - touch1PrevPos).magnitude;
            float touchDeltaMag = (touch0.position - touch1.position).magnitude;

            float deltaMagnitudeDiff = touchDeltaMag - prevTouchDeltaMag;

            currentScale += deltaMagnitudeDiff * zoomSpeed;
            currentScale = Mathf.Clamp(currentScale, minScale, maxScale);
            targetScale = initialScale * currentScale;

            transform.localScale = targetScale;
        }
    }
}
