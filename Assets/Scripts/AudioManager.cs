using UnityEngine;
using System.Collections;

public class AudioManager : MonoBehaviour
{
    static AudioManager instance = null;

    // Use this for initialization
    void Start()
    {
       if (instance != null)
        {
            Destroy(gameObject);
            print("Duplicate music player self-destructing!");
        }
        else
        {
            instance = this;
            GameObject.DontDestroyOnLoad(gameObject);
        }

    }
}
