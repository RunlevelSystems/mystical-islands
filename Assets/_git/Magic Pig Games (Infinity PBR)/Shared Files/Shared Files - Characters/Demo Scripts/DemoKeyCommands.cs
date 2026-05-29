using System.Collections;
using System.Collections.Generic;
using UnityEngine;
#if ENABLE_INPUT_SYSTEM
using UnityEngine.InputSystem;
#endif

public class DemoKeyCommands : MonoBehaviour
{

    public GameObject canvas;

    void Update()
    {
#if ENABLE_INPUT_SYSTEM
        var keyboard = Keyboard.current;
        if (keyboard != null && keyboard.cKey.wasPressedThisFrame)
            canvas.SetActive(!canvas.activeSelf);
#else
        if (Input.GetKeyDown(KeyCode.C))
            canvas.SetActive(!canvas.activeSelf);
#endif
    }
}
