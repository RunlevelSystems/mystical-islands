using TMPro;
using UnityEngine;

namespace InfinityPBR.Demo
{
    /// <summary>Sets this object's TMP text to match the name of its parent GameObject.</summary>
    public class TextSameAsParentName : MonoBehaviour
    {
        private void Start()
        {
            var label = GetComponent<TMP_Text>();
            if (label == null)
            {
                Debug.LogWarning($"[TextSameAsParentName] No TMP_Text component found on {name}.", this);
                return;
            }

            label.text = transform.parent != null ? transform.parent.gameObject.name : gameObject.name;
        }
    }
}
