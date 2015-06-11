﻿namespace TheSlum.Interfaces
{
    public interface ITimeoutable
    {
        //Whats the purpose of Timeout? It's never used!
        int Timeout { get; set; }

        int Countdown { get; set; }

        bool HasTimedOut { get; set; }
    }
}
