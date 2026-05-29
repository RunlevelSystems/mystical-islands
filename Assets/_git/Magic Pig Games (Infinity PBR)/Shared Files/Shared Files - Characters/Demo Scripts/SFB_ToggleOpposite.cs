using UnityEngine;

namespace InfinityPBR.Demo
{
    /// <summary>Keeps objectToSwitch active state as the inverse of objectToWatch.</summary>
    public class SFB_ToggleOpposite : MonoBehaviour
    {
        public GameObject objectToWatch;
        public GameObject objectToSwitch;

        private void Update()
        {
            if (objectToWatch == null || objectToSwitch == null) return;

            bool desired = !objectToWatch.activeSelf;
            if (objectToSwitch.activeSelf != desired)
                objectToSwitch.SetActive(desired);
        }
    }
}