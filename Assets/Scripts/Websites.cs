using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Websites : MonoBehaviour   {

    public void Coyotepod(string name)
    {
        Application.OpenURL("http://coyotepod.com/");
    }

    public void GoogleClassroom(string name)
    {
        Application.OpenURL("http://classroom.google.com/");
    }

    public void Schoology(string name)
    {
        Application.OpenURL("http://www.schoology.com/");
    }

    public void CK12(string name)
    {
        Application.OpenURL("http://www.ck12.org/");
    }

    public void Quizlet(string name)
    {
        Application.OpenURL("http://www.quizlet.com/");
    }

    // Multiplayer Classroom Trailer
    public void MPCTrailer(string name)
    {
        Application.OpenURL("https://youtu.be/embed/MKbnuffbnsY?autoplay=1;vq=hd720");
    }

    
    // Earth & Space Science Trailer
    public void ESSTrailer()
    {
        Application.OpenURL("http://coyotepod.com/");
    }

    // Biology Trailer
    public void BIOTrailer()
    {
        Application.OpenURL("http://coyotepod.com/");
    }

    // Zoology Trailer
    public void ZOOTrailer()
    {
        Application.OpenURL("https://www.youtube.com/embed/mhdgyftKDCY?autoplay=1;vq=hd720");
    }
    

}