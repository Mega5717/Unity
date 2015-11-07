using UnityEngine;
using System.Collections;

public class Restart : MonoBehaviour {

	void OnMouseDown()
	{
		Application.LoadLevel (Application.loadedLevel);
	}
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
