using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class Done_GameController : MonoBehaviour
{	public int nextSpawn;
	public GameObject[] hazards;
	public GameObject[] Nexts;
	public Vector3 spawnValues;
	public GameObject  Restar;
	public Transform restarSpot;
	public int hazardCount;
	public float spawnWait;
	public float startWait;
	public float waveWait;
	public Text scoreText;
	public Text Ideas;
	public Text Instrucciones;
	public Text gameOverText;
	public int tiempo_Mensajes;
	static int puntaje;
	private bool gameOver;
	private bool restart;
	private int score;
	bool Desplegado=false;
	public int vidas =5;
	public static int Actual;
	public Transform pos;
//	float time_Increment=0;7
	float Tiempo_limpieza=4;
//	float nextMessage=0;

	string[] cardiaco={"Corneas ","Piel","Huesos","Ligamentos","Tendones","Valvulas Cardiacas","Vasos Sanguineos"};
	string[] cerebral={"riñones","Higado","Corazon","Pulmones","Pancreas","Intestino","Corneas","Piel","Huesos","Ligamentos","Tendones","Valvulas Cardiacas","Vasos"};
	string[] vida={"Tejido regenerabla","sangre"," Medula Osea","Hueso","Duramadre","Placenta","Riñon","lobulo pulmonar","Segmento Hepatico","Sangre"};

	void Start ()
	{
		gameOver = false;
		restart = false;
		score = 0;
		UpdateScore ();
		StartCoroutine (SpawnNext());

		StartCoroutine (datos_Curiosos());
		StartCoroutine (SpawnWaves ());
	}
	IEnumerator Limpieza(){
		while(true){
			Ideas.text="";
			Debug.Log("Limpiando");
		yield return new WaitForSeconds (Tiempo_limpieza);

		}
	}

	IEnumerator datos_Curiosos()
	{while (true) 
		{if (gameOver)
			{
				restart = true;
				break;
			}
			Ideas.text="";
			yield return new WaitForSeconds (Tiempo_limpieza);
			Debug.Log ("Imprimiendo");
			if (puntaje < 100)
				Ideas.text = "¿Sabias Que por un paro Cardiaco puedes donar \n" + cardiaco [Random.Range (0, cardiaco.Length)] + "?";
			if (puntaje > 100)
				Ideas.text = "¿Sabias Que por un paro Cerebral puedes donar \n" + cerebral [Random.Range (0, cerebral.Length)];
			if (puntaje > 300)
				Ideas.text = "¿Sabias Que en Vida\n " + vida [Random.Range (0, vida.Length)];

			yield return new WaitForSeconds (tiempo_Mensajes);
		}
	}
	void Update ()
	{
		UpdateScore ();

		if (score<0)
			gameOver=true;
		
		
		if (restart && !Desplegado )
		{
			Instrucciones.text="Para reiniciar el nivel Presiona en \nel Corazon de la esquina superior derecha";
			Instantiate(Restar,restarSpot.position,restarSpot.rotation);
			Desplegado=true;
		}
	}


	IEnumerator SpawnNext (){
		while(true){
			if (gameOver)
			{
				restart = true;
				break;
			}
			GameObject obj = GameObject.FindGameObjectWithTag ("Spots");
			if (obj != null)
			{
				Destroy(obj);
			}
			int x=Random.Range (0, Nexts.Length);
			Actual=x+1;
			GameObject nexts = Nexts [x];
			Vector3 spawnPosition =pos.position;
			Quaternion spawnRotation = Quaternion.identity;
			Instantiate (nexts, spawnPosition, spawnRotation);

			yield return new WaitForSeconds (nextSpawn);
		}

	}
	IEnumerator SpawnWaves ()
	{
		yield return new WaitForSeconds (startWait);
		while (true)
		{if (gameOver)
			{
				gameOverText.text = "Game Over! haz asesinado a tu paciente";
				restart = true;
				break;
			}
			for (int i = 0; i < hazardCount; i++)
			{
				GameObject hazard = hazards [Random.Range (0, hazards.Length)];
				Vector3 spawnPosition = new Vector3 (Random.Range (-spawnValues.x, spawnValues.x), spawnValues.y, spawnValues.z);
				Quaternion spawnRotation = Quaternion.identity;
				Instantiate (hazard, spawnPosition, spawnRotation);
				yield return new WaitForSeconds (spawnWait);
			}
			yield return new WaitForSeconds (waveWait);

		}
	}
	
	public void AddScore (int newScoreValue)
	{
		score += newScoreValue;
		UpdateScore ();
	}
	
	void UpdateScore ()
	{
		scoreText.text = "Puntaje: " + score;
	}
	
	public void GameOver ()
	{

		gameOver = true;
	}
}