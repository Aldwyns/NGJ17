using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnArea : MonoBehaviour {

    public float lowX;
    public float highX;
    public float lowY;
    public float highY;

	// Use this for initialization
	void Start () {
        lowX = transform.position.x - (transform.localScale.x / 2);
        highX = transform.position.x + (transform.localScale.x / 2);
        lowY = transform.position.y - (transform.localScale.y / 2);
        highY = transform.position.y + (transform.localScale.y / 2);
    }
	
	// Update is called once per frame
	void Update () {
		
	}
}
