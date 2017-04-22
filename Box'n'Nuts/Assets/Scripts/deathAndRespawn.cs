using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class deathAndRespawn : MonoBehaviour
{

	public GameObject player;

	private float lowLimitX = 1.5f;
	private float highLimitX = 6f;
	private float lowLimitY = -2f;
	private float highLimitY = 5f;


	void Update()
	{
		//transform.position += (transform.up * -0.1f);
		if (player.transform.position.y < -5)
		{
			respawn();
			//player.score.death();

		}
	}

	void respawn()
	{
		float randoXPos = Random.Range(lowLimitX, highLimitX);
		float randoYPos = Random.Range(lowLimitY, highLimitY);
		int randoOperator = Random.Range(0, 2);
		if (randoOperator == 0)
		{
			randoXPos = -randoXPos;
		}

		checkForRespawnCollision(randoXPos, randoYPos);
		//Fireworks when respawning?

	}

	void checkForRespawnCollision(float X, float Y)
	{
		if (Physics.BoxCast(new Vector3(X, Y, 0), player.GetComponent<BoxCollider>().size, new Vector3(0, 0, 0), new Quaternion(0, 0, 0, 0)))
		{
			Debug.Log("collision when respawning");
			checkForRespawnCollision(X, Y + 1);
			return;
		}
		player.transform.position = new Vector3(X, Y, 0);
	}
}
