using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeathField : MonoBehaviour {

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
        Debug.Log("god");
        if (other.transform.GetComponent<deathAndRespawn>())
        {
            other.transform.GetComponent<deathAndRespawn>().death();
        }
    }
}
