using UnityEngine;

namespace InfinityPBR.Demo
{
    public class SFBPingPong : MonoBehaviour
    {
        public float distance = 5f;
        public float speed    = 10f;

        private void Update()
        {
            transform.position = new Vector3(
                -distance + Mathf.PingPong(Time.time * speed, distance * 2f),
                transform.position.y,
                transform.position.z);
        }
    }
}
