using System.Collections;
using System.Collections.Generic;
using UnityEngine;
#if ENABLE_INPUT_SYSTEM
using UnityEngine.InputSystem;
#endif

public class SFB_CameraRotate_v2 : MonoBehaviour {

	public Transform target;									// Target for the rotation
	public float targetOffset = 1.0f;							// Vertical offset for the target, often 1.0 for the middle of a 2m tall character
	public float speed = 10.0f;									// Speed of the default rotation

	public float mouseSpeed = -3f;
	private Vector2 lastMousePosition;
	
	// Update is called once per frame
	void Update () {
		#if ENABLE_INPUT_SYSTEM
		if (Mouse.current == null || !Mouse.current.rightButton.isPressed)
		#else
		if (!Input.GetMouseButton(1))
		#endif
		{
			transform.RotateAround(target.position + new Vector3(0, 1, 0), Vector3.up,
				speed * Time.deltaTime);
		}

		transform.LookAt(target.position + new Vector3(0, targetOffset, 0));
	}

	private void FixedUpdate()
	{
		#if ENABLE_INPUT_SYSTEM
		var mouse = Mouse.current;
		if (mouse == null) return;

		if (mouse.rightButton.wasPressedThisFrame)
			lastMousePosition = mouse.position.ReadValue();

		if (mouse.rightButton.isPressed)
		{
			var currentPos = mouse.position.ReadValue();
			transform.RotateAround(target.position + new Vector3(0, 1, 0), Vector3.up,
				mouseSpeed * (lastMousePosition.x - currentPos.x) * Time.deltaTime);
			lastMousePosition = currentPos;
		}
		#else
		if (Input.GetMouseButtonDown(1))
			lastMousePosition = Input.mousePosition;

		if (Input.GetMouseButton(1))
		{
			var currentPos = (Vector2)Input.mousePosition;
			transform.RotateAround(target.position + new Vector3(0, 1, 0), Vector3.up,
				mouseSpeed * (lastMousePosition.x - currentPos.x) * Time.deltaTime);
			lastMousePosition = currentPos;
		}
		#endif
	}

	/// <summary>
	/// Sets the speed value
	/// </summary>
	/// <param name="newValue">New value.</param>
	public void SetSpeed(float newValue){
		speed = newValue;
	}

}