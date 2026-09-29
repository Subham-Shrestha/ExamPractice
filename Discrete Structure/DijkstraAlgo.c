#include <stdio.h>

int main()
{
    int n;
    int graph[10][10];
    int distance[10];
    int visited[10] = {0};

    int start;
    int i, j;
    int min, u;

    printf("Enter number of vertices: ");
    scanf("%d", &n);

    printf("\nEnter the weight matrix:\n");
    printf("Enter 0 if there is no edge.\n\n");

    for (i = 0; i < n; i++)
    {
        for (j = 0; j < n; j++)
        {
            scanf("%d", &graph[i][j]);

            if (graph[i][j] == 0 && i != j)
                graph[i][j] = 999;
        }
    }

    printf("\nEnter starting vertex (0 to %d): ", n - 1);
    scanf("%d", &start);

    // Initially, all distances are 999
    for (i = 0; i < n; i++)
    {
        distance[i] = 999;
    }

    // Distance from starting vertex to itself
    distance[start] = 0;

    printf("\nDijkstra Steps:\n");

    for (i = 0; i < n; i++)
    {
        min = 999;
        u = -1;

        // Find the smallest unvisited distance
        for (j = 0; j < n; j++)
        {
            if (visited[j] == 0 && distance[j] < min)
            {
                min = distance[j];
                u = j;
            }
        }

        if (u == -1)
            break;

        // Mark vertex as visited
        visited[u] = 1;

        printf("\nStep %d: Selected vertex %d\n", i + 1, u);

        // Update distances
        for (j = 0; j < n; j++)
        {
            if (visited[j] == 0 &&
                graph[u][j] != 999 &&
                distance[u] + graph[u][j] < distance[j])
            {
                printf("Updating vertex %d: %d + %d = %d\n",
                       j,
                       distance[u],
                       graph[u][j],
                       distance[u] + graph[u][j]);

                distance[j] = distance[u] + graph[u][j];
            }
        }
    }

    printf("\nShortest distances:\n");

    for (i = 0; i < n; i++)
    {
        printf("%d -> %d = %d\n",
               start, i, distance[i]);
    }

    return 0;
}