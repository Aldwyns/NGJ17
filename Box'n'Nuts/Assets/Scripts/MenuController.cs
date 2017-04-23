using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class MenuController : MonoBehaviour {

    public List<GameObject> playerSelect = new List<GameObject>();
    public GameObject startButtonReady;
    public GameObject startButtonPressed;



    // Use this for initialization
    void Start () {

    }
	
	// Update is called once per frame
	void Update () {
	    if (Input.GetButtonDown("PhasePlayer0"))
        {
            togglePlayer(0);
        }
        if (Input.GetButtonDown("PhasePlayer1"))
        {
            togglePlayer(1);
        }
        if (Input.GetButtonDown("PhasePlayer2"))
        {
            togglePlayer(2);
        }
        if (Input.GetButtonDown("PhasePlayer3"))
        {
            togglePlayer(3);
        }
        int activePlayers = 0;
        foreach (GameObject child in playerSelect)
        {
            if (child.GetComponent<MeshRenderer>().isVisible)
            {
                activePlayers++;
            }
        }
        if (activePlayers > 1)
        {
            startButtonReady.GetComponent<MeshRenderer>().enabled = true;
        } else
        {
            startButtonReady.GetComponent<MeshRenderer>().enabled = false;
        }

        if (startButtonReady.GetComponent<MeshRenderer>().isVisible && (Input.GetButtonDown("JumpPlayer0") || Input.GetButtonDown("JumpPlayer1")|| Input.GetButtonDown("JumpPlayer2")|| Input.GetButtonDown("JumpPlayer3")))
        {
            startButtonPressed.GetComponent<MeshRenderer>().enabled = true;
            startGame(activePlayers);
        }
    }

    void togglePlayer(int playerNum)
    {

        if (!playerSelect[playerNum].GetComponent<MeshRenderer>().isVisible)
        {
            playerSelect[playerNum].GetComponent<MeshRenderer>().enabled = true;
        }
        if (playerSelect[playerNum].GetComponent<MeshRenderer>().isVisible)
        {
            playerSelect[playerNum].GetComponent<MeshRenderer>().enabled = false;
        }
    }

    void startGame(int playerNum)
    {
        FindObjectOfType<Data>().playerCount = playerNum -1;
        int ran = Random.Range(0, 2);
        string tmp = "Scenes/Level_"+"2";
        
        SceneManager.LoadScene(tmp, LoadSceneMode.Single);
        
    }

    

}
