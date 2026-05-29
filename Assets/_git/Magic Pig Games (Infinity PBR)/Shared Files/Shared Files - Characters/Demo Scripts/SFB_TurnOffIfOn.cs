using UnityEngine;

namespace InfinityPBR.Demo
{
    /// <summary>Turns objectToSwitch off whenever objectToWatch is active.</summary>
    public class SFB_TurnOffIfOn : MonoBehaviour
    {
        public GameObject objectToWatch;
        public GameObject objectToSwitch;

        private void Update()
        {
            if (objectToWatch == null || objectToSwitch == null) return;

            if (objectToWatch.activeSelf && objectToSwitch.activeSelf)
                objectToSwitch.SetActive(false);
        }
    }
}