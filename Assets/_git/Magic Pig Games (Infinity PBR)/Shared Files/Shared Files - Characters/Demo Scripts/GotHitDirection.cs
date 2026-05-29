using System.Collections;
using UnityEngine;

namespace InfinityPBR
{
    public class GotHitDirection : MonoBehaviour
    {
        [Header("Required")]
        public Animator animator;
        public string keyTrigger    = "GotHit";
        public string keyGotHitX    = "GotHitX";
        public string keyGotHitY    = "GotHitY";

        private float      _hitTimer;
        private GameObject _sphere;
        private Vector3    _fromPosition;

        /// <summary>Triggers a directional hit reaction from the given world-space position.</summary>
        public void TriggerHit(Vector3 fromPosition)
        {
            var worldDir = Direction(transform.position, fromPosition);
            var localDir = transform.InverseTransformDirection(worldDir);
            animator.SetFloat(keyGotHitX, localDir.x);
            animator.SetFloat(keyGotHitY, localDir.z);
            animator.SetTrigger(keyTrigger);
        }

        // ── Demo helpers ──────────────────────────────────────────────────────

        private void Update()
        {
            if (_sphere == null) return;
            _sphere.transform.localPosition += _sphere.transform.forward * Time.deltaTime * 20f;
        }

        /// <summary>Spawns a projectile from a random direction to demo the hit-reaction system.</summary>
        public void DemoHit()
        {
            // Cancel any in-progress demo hit
            StopCoroutine(nameof(HitInTime));
            if (_sphere != null) Destroy(_sphere);

            _sphere = GameObject.CreatePrimitive(PrimitiveType.Sphere);
            _sphere.transform.localScale = Vector3.one * 0.33f;
            _sphere.GetComponent<SphereCollider>().enabled = false;
            _sphere.AddComponent<Rigidbody>().useGravity = false;

            var euler = _sphere.transform.localEulerAngles;
            euler.y = Random.Range(0f, 360f);
            _sphere.transform.localEulerAngles = euler;

            var characterPos = transform.position + Vector3.up;
            _sphere.transform.position  = characterPos + _sphere.transform.forward * 4f;
            _sphere.transform.LookAt(characterPos);

            _fromPosition = _sphere.transform.position;
            _hitTimer     = 0.2f;

            Destroy(_sphere, 0.2f);
            StartCoroutine(nameof(HitInTime));
        }

        private IEnumerator HitInTime()
        {
            while (_hitTimer > 0f)
            {
                _hitTimer -= Time.deltaTime;
                yield return null;
            }

            TriggerHit(_fromPosition);
            _sphere = null;
        }

        /// <summary>Returns the normalised direction from <paramref name="from"/> to <paramref name="to"/>.</summary>
        public Vector3 Direction(Vector3 from, Vector3 to) => (to - from).normalized;

        /// <summary>Returns the distance between two points.</summary>
        public float Distance(Vector3 a, Vector3 b) => (a - b).magnitude;
    }
}
