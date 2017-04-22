using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LevelController : MonoBehaviour {

    public int playerNum = 4;
    public GameObject playerPawn;
    List<Transform> players = new List<Transform>();
    public List<int> playerDeathCount = new List<int>();

    public List<Material> colors = new List<Material>();

	// Use this for initialization
	void Start () {
        PlayerSpawn();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public void AddDeath(int playerNum)
    {
        playerDeathCount[playerNum]++;
    }

    public void PlayerSpawn()
    {
        for (int i = 0; i < playerNum; i++)
        {
            GameObject tmp = Instantiate(playerPawn);
            players.Add(tmp.transform);
            tmp.transform.name = "Player" + i;
            tmp.GetComponentInChildren<Renderer>().material = colors[i];
            tmp.GetComponent<PlayerController>().playerNum = i;
            tmp.GetComponent<deathAndRespawn>().respawn();
            playerDeathCount.Add(0);
        }
    }
}
