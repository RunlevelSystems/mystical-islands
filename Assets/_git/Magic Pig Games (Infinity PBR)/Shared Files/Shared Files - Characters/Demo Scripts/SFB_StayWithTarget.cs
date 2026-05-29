using UnityEngine;

namespace InfinityPBR.Demo
{
    public class SFB_StayWithTarget : MonoBehaviour
    {
        public GameObject target;

        private void LateUpdate()
        {
            if (target == null) return;
            transform.position = target.transform.position;
        }
    }
}