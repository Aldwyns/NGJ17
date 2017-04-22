using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class UIController : MonoBehaviour {

    LevelController LevelControllerObject;
    public GameObject UIText;
    List<Transform> UiLocations = new List<Transform>();
    List<Transform> UIElement = new List<Transform>();

	// Use this for initialization
	void Start () {
        LevelControllerObject = FindObjectOfType<LevelController>();
        foreach (Transform child in this.transform)
        {
            UiLocations.Add(child);
        }
        if (LevelControllerObject.playerNum == 2)
        {
            GameObject tmp =  Instantiate(UIText);
            tmp.transform.parent = this.transform;
            tmp.transform.position = UiLocations[0].position;
            tmp.transform.localScale = new Vector3(1, 1, 1);
            UIElement.Add(tmp.transform);
            tmp = Instantiate(UIText);
            tmp.transform.parent = this.transform;
            tmp.transform.position = UiLocations[3].position;
            tmp.transform.localScale = new Vector3(1, 1, 1);
            UIElement.Add(tmp.transform);
        }
        else if (LevelControllerObject.playerNum == 3)
        {
            GameObject tmp = Instantiate(UIText);
            tmp.transform.parent = this.transform;
            tmp.transform.position = UiLocations[0].position;
            tmp.transform.localScale = new Vector3(1, 1, 1);
            UIElement.Add(tmp.transform);
            tmp = Instantiate(UIText);
            tmp.transform.parent = this.transform;
            tmp.transform.position = UiLocations[1].position;
            tmp.transform.localScale = new Vector3(1, 1, 1);
            UIElement.Add(tmp.transform);
            tmp = Instantiate(UIText);
            tmp.transform.parent = this.transform;
            tmp.transform.position = UiLocations[2].position;
            tmp.transform.localScale = new Vector3(1, 1, 1);
            UIElement.Add(tmp.transform);
        }
        else if (LevelControllerObject.playerNum == 4)
        {
            GameObject tmp = Instantiate(UIText);
            tmp.transform.parent = this.transform;
            tmp.transform.position = UiLocations[0].position;
            tmp.transform.localScale = new Vector3(1, 1, 1);
            UIElement.Add(tmp.transform);
            tmp = Instantiate(UIText);
            tmp.transform.parent = this.transform;
            tmp.transform.position = UiLocations[1].position;
            tmp.transform.localScale = new Vector3(1, 1, 1);
            UIElement.Add(tmp.transform);
            tmp = Instantiate(UIText);
            tmp.transform.parent = this.transform;
            tmp.transform.position = UiLocations[2].position;
            tmp.transform.localScale = new Vector3(1, 1, 1);
            UIElement.Add(tmp.transform);
            tmp = Instantiate(UIText);
            tmp.transform.parent = this.transform;
            tmp.transform.position = UiLocations[3].position;
            tmp.transform.localScale = new Vector3(1, 1, 1);
            UIElement.Add(tmp.transform);
        }
    }
	
	// Update is called once per frame
	void Update () {
		if (UIElement[0])
        {
            foreach (Transform child in UIElement[0])
            {
                if (child.transform.name == "Score")
                {
                    child.GetComponent<Text>().text = LevelControllerObject.playerDeathCount[0].ToString();
                }
                if (child.transform.name == "BG")
                {
                    child.GetComponent<Image>().color = Color.blue;
                } 
            }
        }
        if (UIElement[1])
        {
            foreach (Transform child in UIElement[1])
            {
                if (child.transform.name == "Score")
                {
                    child.GetComponent<Text>().text = LevelControllerObject.playerDeathCount[1].ToString();
                }
                if (child.transform.name == "BG")
                {
                    child.GetComponent<Image>().color = Color.red;
                }
            }
        }
        if (UIElement[2])
        {
            foreach (Transform child in UIElement[2])
            {
                if (child.transform.name == "Score")
                {
                    child.GetComponent<Text>().text = LevelControllerObject.playerDeathCount[2].ToString();
                }
                if (child.transform.name == "BG")
                {
                    child.GetComponent<Image>().color = Color.yellow;
                }
            }
        }
        if (UIElement[3])
        {
            foreach (Transform child in UIElement[3])
            {
                if (child.transform.name == "Score")
                {
                    child.GetComponent<Text>().text = LevelControllerObject.playerDeathCount[3].ToString();
                }
                if (child.transform.name == "BG")
                {
                    child.GetComponent<Image>().color = Color.white;
                }
            }
        }
    }
}
