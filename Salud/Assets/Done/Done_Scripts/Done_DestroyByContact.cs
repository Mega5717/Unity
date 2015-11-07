using UnityEngine;
using System.Collections;

public class Done_DestroyByContact : MonoBehaviour
{
	public GameObject explosion;
	public GameObject Damage;
	public GameObject points;
//	public int scoreValue;
	private Done_GameController gameController;

	void Start ()
	{
		GameObject gameControllerObject = GameObject.FindGameObjectWithTag ("GameController");
		if (gameControllerObject != null)
		{
			gameController = gameControllerObject.GetComponent <Done_GameController>();
		}
		if (gameController == null)
		{
			Debug.Log ("Cannot find 'GameController' script");
		}
	}

	void OnTriggerEnter (Collider other)
	{
		if (other.tag == "Boundary" || other.tag == "Enemy")
		{
			return;
		}
		if (tag== "Heart_Spot" && other.tag == "fake_lungs") 
		{
			Instantiate(explosion,other.transform.position,other.transform.rotation);
			Instantiate(Damage,other.transform.position,other.transform.rotation);
			gameController.AddScore(-10);
			Destroy (other.gameObject);
			return;
		
		}
		if (tag== "Eyes_Spot" && (other.tag == "Heart_Spot" ||other.tag == "kidneys_Spot" || other.tag == "fake_lungs" )) 
		{
			Instantiate(explosion,other.transform.position,other.transform.rotation);
			Destroy (other.gameObject);
			Instantiate(Damage,other.transform.position,other.transform.rotation);	
			gameController.AddScore(-10);
			return;
		}
		if (tag== "Heart_Spot" && (other.tag == "Eyes_Spot" ||other.tag == "kidneys_Spot" ||other.tag == "fake_lungs" )) 
		{
			Instantiate(explosion,other.transform.position,other.transform.rotation);
			Instantiate(Damage,other.transform.position,other.transform.rotation);
			gameController.AddScore(-10);
			Destroy (other.gameObject);
			return;
		}
		if (tag== "kidneys_Spot" && (other.tag == "Eyes_Spot" ||other.tag == "Heart_Spot" || other.tag == "fake_lungs" )) 
		{
			Instantiate(explosion,other.transform.position,other.transform.rotation);
			Instantiate(Damage,other.transform.position,other.transform.rotation);
			gameController.AddScore(-10);
			Destroy (other.gameObject);
			return;
		}

		if (other.tag == tag)
		{
			Instantiate(explosion,other.transform.position,other.transform.rotation);
			Debug.Log("Array pos: "+Done_GameController.Actual+" OtherID :"+other.GetComponent<ID>().ident);
			if(Done_GameController.Actual==other.GetComponent<ID>().ident)
			{
				Instantiate(points,other.transform.position,other.transform.rotation);	
				gameController.AddScore(+10);}
			else{
				Instantiate(Damage,other.transform.position,other.transform.rotation);
				gameController.AddScore(-10);
			}
			Destroy (other.gameObject);
			return;
		}

//		Destroy (gameObject);
	}
	
	void get_ActualState()
	{

	}


}
