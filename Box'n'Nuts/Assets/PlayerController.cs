using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour {

    int playerNum;
    float speed = 0.05f;
    Vector3 moveDir;

	// Use this for initialization
	void Start () {
	    	
	}
	
	// Update is called once per frame
	void Update () {

        if (Input.GetAxis("Vertical") > 0)
        { 
            moveDir.y += Input.GetAxis("Vertical");
        }
        moveDir.x += (Input.GetAxis("Horizontal") / 10);
        moveDir.Normalize();

        this.transform.position = this.transform.position + (moveDir * speed);
        if (this.transform.position.z != 0)
        {
            this.transform.position = new Vector3(this.transform.position.x, this.transform.position.y,0);
        }

        RaycastHit hit;
        Physics.Raycast(transform.position, new Vector3(0, -1, 0),out hit, 5);
        

	}
}
