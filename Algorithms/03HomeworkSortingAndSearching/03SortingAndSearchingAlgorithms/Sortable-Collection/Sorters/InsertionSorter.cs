﻿namespace Sortable_Collection.Sorters
{
    using System;
    using System.Collections.Generic;

    using Sortable_Collection.Contracts;

    public class InsertionSorter<T> : ISorter<T> where T : IComparable<T>
    {
        public void Sort(List<T> collection)
        {
            for (int i = 1; i < collection.Count; i++)
            {
                int targetIndex = i;

                while (targetIndex > 0 && collection[i].CompareTo(collection[targetIndex - 1]) < 0)
                {
                    targetIndex--;
                }

                if (targetIndex < i)
                {
                    T element = collection[i];
                    collection.RemoveAt(i);
                    collection.Insert(targetIndex,element);
                }
            }
        }
    }
}
