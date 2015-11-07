using UnityEngine;
using System.Collections;

public class Done_Mover : MonoBehaviour
{
	public float speed;

	void Start ()
	{
		GetComponent<Rigidbody>().velocity = transform.forward * speed;
		if(tag=="fake_lungs"|| tag=="Eyes_Spot" || tag=="kidneys_Spot"|| tag=="Heart_Spot"){
			GetComponent<Rigidbody>().velocity = transform.forward * Random.Range(speed-3,speed);

		}

	}

}
