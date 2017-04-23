using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LevelController : MonoBehaviour {

    public int playerNum = 4;
    public GameObject playerPawn;
    List<Transform> players = new List<Transform>();
    public List<int> playerDeathCount = new List<int>();

    public List<Material> colors = new List<Material>();

    float timerStart;
    public bool roundStarted = false;
    float startTimer = 3f;
    public float startActiveTimer;

    public bool gameEnded = false;
    float roundTimer = 60f;
    public float roundActiveTimer;


	// Use this for initialization
	void Start () {
        timerStart = Time.time;

        if (FindObjectOfType<Data>())
        {
            playerNum = FindObjectOfType<Data>().playerCount;
        }
        PlayerSpawn();
        foreach (string eh in Input.GetJoystickNames())
        {
            Debug.Log(eh);
        }
    }
	
	// Update is called once per frame
	void Update () {
        startActiveTimer = startTimer - (Time.time - timerStart);
        roundActiveTimer = roundTimer - (Time.time - timerStart);
        
        if (!roundStarted && startActiveTimer < 0)
        {
            foreach (Transform player in players)
            {
                player.GetComponent<PlayerController>().enabled = true;
            }
            timerStart = Time.time;
            roundStarted = true;
        }
        if (roundStarted && roundActiveTimer < 0)
        {
            Debug.Log("Game Ended");
            gameEnded = true;
            int lowVal = 9999;
            int lowIndex = 0;
            for (int i = 0; i < playerDeathCount.Count; i++)
            {
                if (playerDeathCount[i] < lowVal)
                {
                    lowVal = playerDeathCount[i];
                    lowIndex = i;
                }
            }
            // lowIndex == Winner
            for (int i = 0; i < players.Count; i++)
            {
                players[i].GetComponent<PlayerController>().enabled = false;
				if (i == lowIndex)
				{
					players[i].GetComponent<PlayerController>().anim.victory();
				} else
				{
					players[i].GetComponent<PlayerController>().anim.losing();
				}


			}
        }
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
			tmp.GetComponent<PlayerController>().phasemat = colors[i + 4];
            tmp.GetComponent<PlayerController>().playerNum = i;
            tmp.GetComponent<deathAndRespawn>().respawn();
            playerDeathCount.Add(0);
            tmp.GetComponent<PlayerController>().enabled = false;
        }
    }
}
