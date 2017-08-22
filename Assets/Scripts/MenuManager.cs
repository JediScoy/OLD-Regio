using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class MenuManager : MonoBehaviour
{ 

public static string PreviousScene = "";
public void LoadScene(string sceneName)
{
    PreviousScene = SceneManager.GetActiveScene().name;
    SceneManager.LoadScene(sceneName);
}

// public void LoadLevel(string name)
// {
//    Debug.Log("Loading:" + name);
//    Application.LoadLevel(name)
//    }

public void QuitRequest()
    {
        Debug.Log("Quit requested");
        Application.Quit();
    }
    
}
