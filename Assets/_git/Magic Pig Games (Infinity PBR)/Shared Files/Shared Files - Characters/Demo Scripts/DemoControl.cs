using UnityEngine;
#if ENABLE_INPUT_SYSTEM
using UnityEngine.InputSystem;
#endif
using UnityEngine.UI;

namespace InfinityPBR.Demo
{
	public class DemoControl : MonoBehaviour
	{

		[Header("Plumbing")]
		public GameObject cameraObject;
		public GameObject canvas;
		public Slider heightBar;
		public Button gotHitDirectionalButton;

		[Header("Options")]
		public float mouseSensitivityY = -0.005f;
		public float mouseSensitivityX = 0.01f;
		public float timeScaleIncrement = 0.1f;
		#if ENABLE_INPUT_SYSTEM
		public Key gotHitDirectionalKey = Key.G;
		#else
		public KeyCode gotHitDirectionalKey = KeyCode.G;
		#endif

		// privates
		private Vector2 lastMousePosition;

		void Update()
		{
			#if ENABLE_INPUT_SYSTEM
			var keyboard = Keyboard.current;
			if (keyboard == null) return;

			if (keyboard.minusKey.wasPressedThisFrame)              SetTimescale(Time.timeScale -= timeScaleIncrement);
			if (keyboard.equalsKey.wasPressedThisFrame)             SetTimescale(Time.timeScale += timeScaleIncrement);
			if (keyboard.cKey.wasPressedThisFrame)                  canvas.SetActive(!canvas.activeSelf);
			if (keyboard[gotHitDirectionalKey].wasPressedThisFrame) gotHitDirectionalButton.onClick.Invoke();
			#else
			if (Input.GetKeyDown(KeyCode.Minus))                    SetTimescale(Time.timeScale -= timeScaleIncrement);
			if (Input.GetKeyDown(KeyCode.Equals))                   SetTimescale(Time.timeScale += timeScaleIncrement);
			if (Input.GetKeyDown(KeyCode.C))                        canvas.SetActive(!canvas.activeSelf);
			if (Input.GetKeyDown(gotHitDirectionalKey))             gotHitDirectionalButton.onClick.Invoke();
			#endif
		}

		/// <summary>
		/// Simply sets the .y value of the camera transform
		/// </summary>
		/// <param name="newValue">New value.</param>
		public void SetCameraHeight(float newValue)
		{
			//Debug.Log("Old:" + cameraObject.transform.localPosition);
			Vector3 newPosition = new Vector3(cameraObject.transform.localPosition.x, newValue, cameraObject.transform.localPosition.z);
			cameraObject.transform.localPosition = newPosition;			// Set the position
			//Debug.Log("New: " + cameraObject.transform.localPosition);
		}

		/// <summary>
		/// Simply sets the timescale
		/// </summary>
		/// <param name="newValue">New value.</param>
		public void SetTimescale(float newValue){
			Time.timeScale = newValue;							// Set the value
			Debug.Log($"Timescale is now <color=#ffff00>{Time.timeScale}</color>");
		}

		private void FixedUpdate()
		{
			if (heightBar == null) return;

			#if ENABLE_INPUT_SYSTEM
			var mouse = Mouse.current;
			if (mouse == null) return;

			if (mouse.rightButton.wasPressedThisFrame)
				lastMousePosition = mouse.position.ReadValue();

			if (mouse.rightButton.isPressed)
			{
				var currentPos = mouse.position.ReadValue();
				heightBar.value += (currentPos.y - lastMousePosition.y) * mouseSensitivityY;
				lastMousePosition = currentPos;
			}
			#else
			if (Input.GetMouseButtonDown(1))
				lastMousePosition = Input.mousePosition;

			if (Input.GetMouseButton(1))
			{
				var currentPos = (Vector2)Input.mousePosition;
				heightBar.value += (currentPos.y - lastMousePosition.y) * mouseSensitivityY;
				lastMousePosition = currentPos;
			}
			#endif
		}
	}
}
