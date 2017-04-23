using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spikes : MonoBehaviour {

	// Use this for initialization
	void Start () {
        transform.GetComponent<Collider>().isTrigger = true;
        transform.GetComponent<Collider>().enabled = true;
    }
	
	// Update is called once per frame
	void Update () {
        
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.transform.GetComponent<deathAndRespawn>())
        {
			Debug.Log("death by spikes");
            other.transform.GetComponent<deathAndRespawn>().death();
			other.transform.GetComponent<PlayerController>().death();
        }
    }
}
