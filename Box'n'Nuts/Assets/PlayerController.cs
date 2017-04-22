using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour {

    int playerNum;
    float speed = 2f;
    float gravity = -2f;
    float jumpSpeed = 25f;
    bool onGround;
    bool jumping;
    float startJumpTime;
    Vector3 frameDir;
    Vector3 moveDir;

	// Use this for initialization
	void Start () {
	    	
	}
	
	// Update is called once per frame
	void Update () {

        RaycastHit hit;
        if (Physics.Raycast(transform.position, new Vector3(0, -1, 0), out hit, 100f))
        {
            if (Vector3.Distance(hit.point,this.transform.position) <= 0.2f)
            {
                //this.transform.position = hit.point; 
                //moveDir.y = 0;
                //frameDir.y = 0;
                onGround = true;
                jumping = false;
            }
            else if ((!jumping && Vector3.Distance(hit.point, this.transform.position) <= 0.5f))
            {
                //frameDir.y = (gravity * 0.5f);
            }
            else if ((!jumping && Vector3.Distance(hit.point, this.transform.position) > 0.2f))
            {
                //frameDir.y = gravity;
                onGround = false;
            }
            
        }
        else
        {
            //frameDir.y = gravity;
            //onGround = false;
        }
        //frameDir.y = gravity;


        if (Input.GetAxis("Vertical") > 0 && onGround && !jumping)
        {
            //frameDir.y = (Input.GetAxis("Vertical") * jumpSpeed);
            transform.GetComponent<Rigidbody>().velocity = transform.InverseTransformDirection( transform.GetComponent<Rigidbody>().velocity + (new Vector3(0, 1, 0) * 6) );
            jumping = true;
            startJumpTime = Time.time;
        }
        /*if (jumping && (Time.time - startJumpTime) < 1f)
        {
            frameDir.y = ((Input.GetAxis("Vertical") * jumpSpeed) * (Time.time - startJumpTime));
        }
        else if (jumping && (Time.time - startJumpTime) > 1.2f)
        {
            jumping = false;
        }*/

        frameDir.x = (Input.GetAxis("Horizontal"));

        //moveDir = moveDir + (frameDir * 1.0f) / 2f;
        moveDir = moveDir + frameDir;

        this.transform.position = this.transform.position + (moveDir * speed) * Time.deltaTime;

        if (this.transform.position.z != 0)
        {
            this.transform.position = new Vector3(this.transform.position.x, this.transform.position.y,0);
        }


        moveDir = moveDir * 0.5f;
	}
}
