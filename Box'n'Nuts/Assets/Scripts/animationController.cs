﻿using System.Collections; using System.Collections.Generic; using UnityEngine;  public class animationController : MonoBehaviour {  	public Animator anim;  	// Use this for initialization 	void Start () { 		if (anim == null) 		{ 			anim = GetComponent<Animator>(); 		} 	} 	 	// Update is called once per frame 	void Update () { 	}  	public void death () 	{ 		anim.SetTrigger("death"); 	}  	public void spawn () 	{ 		int randoSpawn = Random.Range(1, 6); 		anim.SetTrigger("spawning" + randoSpawn); 	}  	public void jump () 	{ 		anim.SetTrigger("isJumping"); 	}   	public void landing () 	{ 		anim.SetTrigger("landing"); 	}  	public void victory ()
	{
		anim.SetTrigger("victory");
	}  	public void losing ()
	{
		anim.SetTrigger("losing");
	} } 