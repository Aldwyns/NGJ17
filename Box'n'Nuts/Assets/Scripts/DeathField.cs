using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeathField : MonoBehaviour {

	private soundController sounds;

	// Use this for initialization
	void Start () {
        transform.GetComponent<Collider>().isTrigger = true;
        transform.GetComponent<Collider>().enabled = true;
		sounds = GetComponent<soundController>();

    }
	
	// Update is called once per frame
	void Update () {
        	
	}


    private void OnTriggerEnter(Collider other)
    {
        if (other.transform.GetComponent<deathAndRespawn>())
        {
            other.transform.GetComponent<deathAndRespawn>().death();
			other.transform.GetComponent<PlayerController>().death();
			

        }
    }
}
