using UnityEngine;
using Vuforia;

[RequireComponent(typeof(PlaneFinderBehaviour))]
public class PlaneFinderManager : MonoBehaviour
{
    private PlaneFinderBehaviour planeFinderBehaviour;
    private AnchorInputListenerBehaviour anchorInputListenerBehaviour;

    void Start()
    {
        planeFinderBehaviour = GetComponent<PlaneFinderBehaviour>();
        anchorInputListenerBehaviour = GetComponent<AnchorInputListenerBehaviour>();
    }

    public void DisablePlaneFinder()
    {
        planeFinderBehaviour.enabled = false;
        anchorInputListenerBehaviour.enabled = false;
    }

    public void EnablePlaneFinder()
    {
        planeFinderBehaviour.enabled = true;
        anchorInputListenerBehaviour.enabled = true;
    }
}
