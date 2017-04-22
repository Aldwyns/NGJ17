using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class animationController : MonoBehaviour {

	public Animator anim;

	// Use this for initialization
	void Start () {
		if (anim == null)
		{
			anim = GetComponent<Animator>();
		}
	}
	
	// Update is called once per frame
	void Update () {
		anim.SetBool("death", false);
		anim.SetBool("spawning1", false);
		anim.SetBool("spawning2", false);
		anim.SetBool("isJumping", false);
		anim.SetBool("landing", false);
	}

	public void death ()
	{
		anim.SetBool("death", true);
	}

	public void spawn ()
	{
		int randoSpawn = Random.Range(1, 2);
		anim.SetBool("spawning" + randoSpawn, true);
	}

	public void jump ()
	{
		anim.SetBool("isJumping", true);
	} 

	public void landing ()
	{
		anim.SetBool("landing", true);
	}
}
