using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LevelController : MonoBehaviour {

    public int playerNum = 4;
    public GameObject playerPawn;
    List<Transform> players;
    List<int> playerDeathCount;

	// Use this for initialization
	void Start () {
        for (int i = 0; i < playerNum; i++)
        {
            GameObject tmp = Instantiate(playerPawn);
            players.Add(tmp.transform);
            tmp.transform.name = "Player" + i;
            tmp.GetComponent<PlayerController>().playerNum = i;
            tmp.GetComponent<deathAndRespawn>().respawn();
            playerDeathCount.Add(0);
        }
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public void AddDeath(int playerNum)
    {
        playerDeathCount[playerNum] = playerDeathCount[playerNum]++;
    }
}
