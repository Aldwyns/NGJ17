﻿using System.Collections; using System.Collections.Generic; using UnityEngine;  public class PlayerController : MonoBehaviour {      public int playerNum; 	public animationController anim; 	public float lowestSpeed = 5f; 	public float maxSpeed = 11f; 	public float minJump = 5f; 	public float maxJump = 10f; 	public float jumpSpeed; 	string HorizontalAxis;     string VerticalAxis;     string JumpButton;  	private Rigidbody rig; 	public float speed;     float gravity = -2f; 	          bool onGround;     bool jumping;     float startJumpTime;     Vector3 frameDir;     Vector3 moveDir;  	// Use this for initialization 	void Start () {         HorizontalAxis = "HorizontalPlayer" + playerNum;         VerticalAxis = "VerticalPlayer" + playerNum;         JumpButton = "JumpPlayer" + playerNum; 		rig = GetComponent<Rigidbody>(); 		jumpSpeed = minJump; 		speed = lowestSpeed; 		if (anim == null)
		{
			anim = this.GetComponent<animationController>();
		} 	} 	 	// Update is called once per frame 	void FixedUpdate () {           RaycastHit hit;         if (Physics.Raycast(transform.position+ (Vector3.right * 0.3f), new Vector3(0, -1, 0), out hit, 1f) || Physics.Raycast(transform.position+ (Vector3.right * -0.3f), new Vector3(0, -1, 0), out hit, 1f))         {             if (hit.transform != this.transform && !hit.transform.GetComponent<DeathField>())             {                              if (Vector3.Distance(hit.point,this.transform.position) <= 0.1f)                 {                     onGround = true;                     jumping = false;                 }                 //else if ((!jumping && Vector3.Distance(hit.point, this.transform.position) > 0.5f))                 //{                 //    onGround = false;                 //} 				else 				{ 					onGround = false; 				}             }         }

		if (Input.GetAxis(JumpButton) > 0 && onGround && !jumping)         {             //frameDir.y = (Input.GetAxis("Vertical") * jumpSpeed);             transform.GetComponent<Rigidbody>().velocity = (((new Vector3(0,1,0) + hit.normal) / 2) * jumpSpeed);             jumping = true;             startJumpTime = Time.time; 			if (jumpSpeed < maxJump) 			{ 				jumpSpeed += 2f; 			} 			anim.jump();         } else if (jumpSpeed > minJump) 		{ 			jumpSpeed -= 0.01f; 		}         /*if (jumping && (Time.time - startJumpTime) < 1f)         {             frameDir.y = ((Input.GetAxis("Vertical") * jumpSpeed) * (Time.time - startJumpTime));         }         else if (jumping && (Time.time - startJumpTime) > 1.2f)         {             jumping = false;         }*/          frameDir.x = (Input.GetAxis(HorizontalAxis));          //moveDir = moveDir + (frameDir * 1.0f) / 2f;         moveDir = moveDir + frameDir; 		if (moveDir != Vector3.zero && speed < maxSpeed) 		{ 			speed += 0.02f; 		} 		else if (speed > lowestSpeed) 		{ 			speed -= 0.05f; 		}  		//this.transform.position = this.transform.position + (moveDir * speed) * Time.deltaTime;   		rig.AddForce(moveDir* speed,ForceMode.Acceleration);          if (this.transform.position.z != 0)         {             this.transform.position = new Vector3(this.transform.position.x, this.transform.position.y,0);         }           moveDir = moveDir * 0.5f;  		  	} 	private void OnCollisionEnter(Collision collision) 	{ 		if (collision.gameObject.GetComponent<Rigidbody>()) 		{  			if (Vector3.Angle(collision.transform.position - transform.position,rig.velocity) < 90) 			{ 				collision.transform.GetComponent<PlayerController>().addForceInDirection(rig.velocity, collision.contacts); 				addBackLash(rig.velocity, collision); 			}  			/*RaycastHit hit; 			if (Physics.Raycast(transform.position, rig.velocity, out hit, 10f)) 			{ 				if (hit.transform.gameObject == collision.gameObject) 				{ 					Debug.DrawRay(transform.position, rig.velocity, Color.red, 4); 					hit.transform.GetComponent<PlayerController>().addForceInDirection(rig.velocity, collision.contacts); 					 				} 			}*/ 		} 	}  	public void addForceInDirection (Vector3 forz, ContactPoint[] contact) 	{ 		rig.AddForce(forz*1.5f,ForceMode.Impulse); 	}  	public void addBackLash(Vector3 forz, Collision col) 	{ 		rig.AddForce(forz * -1.5f, ForceMode.Impulse); 	}  	public void setZeroVelocity() 	{ 		speed = lowestSpeed; 		jumpSpeed = minJump; 	} } 