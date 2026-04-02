#include <bits/stdc++.h>
using namespace std;

int main() {
    int n;
    cout << "Enter the number of process: ";
    cin >> n;

    int cpu[n], arrival[n], waiting[n], turnaround[n];
    int vis[n];

    for(int i = 0; i < n; i++) {
        vis[i] = 0;
    }

    cout << "Enter the CPU times:\n";
    for(int i = 0; i < n; i++) {
        cin >> cpu[i];
    }

    cout << "Enter the arrival times:\n";
    for(int i = 0; i < n; i++) {
        cin >> arrival[i];
    }

    int completed = 0;
    int time = 0;

    float total_wait = 0, total_turn = 0;

    while(completed < n) {
        int idx = -1;
        int min_cpu = 1000000;

        for(int i = 0; i < n; i++) {
            if(vis[i] == 0 && arrival[i] <= time) {
                if(cpu[i] < min_cpu) {
                    min_cpu = cpu[i];
                    idx = i;
                }
            }
        }

        if(idx == -1) {
            time++;
            continue;
        }

        waiting[idx] = time - arrival[idx];
        if(waiting[idx] < 0)
            waiting[idx] = 0;

        time += cpu[idx];

        turnaround[idx] = waiting[idx] + cpu[idx];

        vis[idx] = 1;
        completed++;

        total_wait += waiting[idx];
        total_turn += turnaround[idx];
    }

    cout << "\nOutput:\n";
    for(int i = 0; i < n; i++) {
        cout << "Process " << i+1
             << " : Waiting Time : " << waiting[i]
             << " Turnaround Time : " << turnaround[i] << endl;
    }

    cout << "\nAverage Waiting time : " << total_wait / n << endl;
    cout << "Average Turnaround time : " << total_turn / n << endl;

    return 0;
}