﻿using System.Collections; using System.Collections.Generic; using UnityEngine;  public class soundController : MonoBehaviour {  	public AudioClip[] deathSoundsPlayer1; 	public AudioClip[] deathSoundsPlayer2; 	public AudioClip[] deathSoundsPlayer3; 	public AudioClip[] deathSoundsPlayer4;  	public AudioClip[] jumpSoundsPlayer1; 	public AudioClip[] jumpSoundsPlayer2; 	public AudioClip[] jumpSoundsPlayer3; 	public AudioClip[] jumpSoundsPlayer4;  	public AudioClip[] impactSoundsPlayer1; 	public AudioClip[] impactSoundsPlayer2; 	public AudioClip[] impactSoundsPlayer3; 	public AudioClip[] impactSoundsPlayer4;  	AudioSource[] thaSource;  	// Use this for initialization 	void Start () { 		thaSource = GetComponents<AudioSource>(); 	} 	 	// Update is called once per frame 	void Update () { 		 	}  	public void jump (int player) 	{ 		switch (player)
		{
			case 0:
				thaSource[0].clip = jumpSoundsPlayer1[Random.Range(0, jumpSoundsPlayer1.Length)];
				thaSource[0].Play();
				break;
			case 1:
				thaSource[0].clip = jumpSoundsPlayer2[Random.Range(0, jumpSoundsPlayer2.Length)];
				thaSource[0].Play();
				break;
			case 2:
				thaSource[0].clip = jumpSoundsPlayer3[Random.Range(0, jumpSoundsPlayer3.Length)];
				thaSource[0].Play();
				break;
			case 3:
				thaSource[0].clip = jumpSoundsPlayer4[Random.Range(0, jumpSoundsPlayer4.Length)];
				thaSource[0].Play();
				break;
			default:
				break;
		}
	}  	public void impact (int player)
	{
		switch (player)
		{
			case 0:
				thaSource[0].clip = impactSoundsPlayer1[Random.Range(0, impactSoundsPlayer1.Length)];
				thaSource[0].Play();
				break;
			case 1:
				thaSource[0].clip = impactSoundsPlayer2[Random.Range(0, impactSoundsPlayer2.Length)];
				thaSource[0].Play();
				break;
			case 2:
				thaSource[0].clip = impactSoundsPlayer3[Random.Range(0, impactSoundsPlayer3.Length)];
				thaSource[0].Play();
				break;
			case 3:
				thaSource[0].clip = impactSoundsPlayer4[Random.Range(0, impactSoundsPlayer4.Length)];
				thaSource[0].Play();
				break;
			default:
				break;
		}
	}  	public void death(int player)
	{
		switch (player)
		{
			case 0:
				thaSource[0].clip = deathSoundsPlayer1[Random.Range(0, deathSoundsPlayer1.Length)];
				thaSource[0].Play();
				break;
			case 1:
				thaSource[1].clip = deathSoundsPlayer2[Random.Range(0, deathSoundsPlayer2.Length)];
				thaSource[1].Play();
				break;
			case 2:
				thaSource[3].clip = deathSoundsPlayer3[Random.Range(0, deathSoundsPlayer3.Length)];
				thaSource[3].Play();
				break;
			case 3:
				thaSource[4].clip = deathSoundsPlayer4[Random.Range(0, deathSoundsPlayer4.Length)];
				thaSource[4].Play();
				break;
			default:
				break;
		}
	} } 