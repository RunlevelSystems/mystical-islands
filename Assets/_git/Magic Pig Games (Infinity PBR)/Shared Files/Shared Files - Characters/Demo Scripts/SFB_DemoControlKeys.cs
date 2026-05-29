using UnityEngine;
#if ENABLE_INPUT_SYSTEM
using UnityEngine.InputSystem;
#endif

namespace InfinityPBR.Demo
{
    public class SFB_DemoControlKeys : MonoBehaviour
    {
        public GameObject objectC;
#if ENABLE_INPUT_SYSTEM
        public Key toggleKey = Key.C;
#else
        public KeyCode toggleKey = KeyCode.C;
#endif

        private void Update()
        {
            if (objectC == null) return;

#if ENABLE_INPUT_SYSTEM
            var keyboard = Keyboard.current;
            if (keyboard == null) return;

            if (keyboard[toggleKey].wasPressedThisFrame)
                objectC.SetActive(!objectC.activeSelf);
#else
            if (Input.GetKeyDown(toggleKey))
                objectC.SetActive(!objectC.activeSelf);
#endif
        }
    }
}
