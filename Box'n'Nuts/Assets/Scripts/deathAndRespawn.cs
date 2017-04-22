﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class deathAndRespawn : MonoBehaviour
{

	public PlayerController player;
	public float DeathzoneYValue = -5f;

	private Rigidbody rig;
	private float lowLimitX = 3f;
	private float highLimitX = 9f;
	private float lowLimitY = -3f;
	private float highLimitY = 4f;

	private void Start()
	{
		if (player==null)
		{
			player = this.gameObject.GetComponent<PlayerController>();
		}
		rig = player.GetComponent<Rigidbody>();
	}


	void Update()
	{
		
	}

    public void death()
    {
        respawn();
            FindObjectOfType<LevelController>().AddDeath(player.GetComponent<PlayerController>().playerNum);
            //player.score.death();
			
			//set velocity to 0
			setVelZero();
    }

	public void respawn()
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
		player.transform.rotation = new Quaternion(0, 0, 0, 0);
	}

	void setVelZero()
	{

		rig.velocity = Vector3.zero;
		rig.angularVelocity = Vector3.zero;
		player.setZeroVelocity();
	}
}
