using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour {

    int playerNum;
    float speed = 1f;
    float gravity = -7f;
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

        if (jumping && (Time.time - startJumpTime) < 1.2f)
        {
            frameDir.y += (Input.GetAxis("Vertical") * -gravity);
        }
        else if (jumping && (Time.time - startJumpTime) > 1.2f)
        {
            jumping = false;
        }

        RaycastHit hit;
        Debug.DrawRay(transform.position, new Vector3(0, -1, 0), Color.red);
        if (Physics.Raycast(transform.position, new Vector3(0, -1, 0), out hit, 0.1f))
        {
            if (!jumping) { this.transform.position = hit.point; }
            moveDir.y = 0;
            onGround = true;
        }
        else
        {
            if (!jumping) { moveDir.y = gravity; }
            
            onGround = false;
        }

        if (Input.GetAxis("Vertical") > 0 && onGround)
        {
            frameDir.y += (Input.GetAxis("Vertical") * 10);
            jumping = true;
            onGround = false;
            startJumpTime = Time.time;
        }
        frameDir.x += (Input.GetAxis("Horizontal"));

        moveDir = moveDir + (frameDir * 1.0f) / 2f;

        /*if (moveDir.x > 0) { moveDir.x -= 0.1f; }
        if (moveDir.x < 0) { moveDir.x += 0.1f; }
        if (moveDir.y > 0) { moveDir.y -= 0.1f; }
        if (moveDir.y < 0) { moveDir.y += 0.1f; }*/

        this.transform.position = this.transform.position + (moveDir * speed) * Time.deltaTime;
        if (this.transform.position.z != 0)
        {
            this.transform.position = new Vector3(this.transform.position.x, this.transform.position.y,0);
        }


        frameDir = frameDir * 0;
	}
}
