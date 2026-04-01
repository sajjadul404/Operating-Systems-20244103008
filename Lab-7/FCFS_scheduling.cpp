#include <bits/stdc++.h>
using namespace std;

int main() {
    int n;
    cin >> n;

    int cpu[n], arrival[n], waiting[n], turnaround[n], pid[n];

    for(int i = 0; i < n; i++) {
        cin >> cpu[i];
        pid[i] = i + 1;
    }

    for(int i = 0; i < n; i++) {
        cin >> arrival[i];
    }

    for(int i = 0; i < n-1; i++) {
        for(int j = i+1; j < n; j++) {
            if(arrival[i] > arrival[j]) {
                swap(arrival[i], arrival[j]);
                swap(cpu[i], cpu[j]);
                swap(pid[i], pid[j]);
            }
        }
    }

    waiting[0] = 0;

    for(int i = 1; i < n; i++) {
        waiting[i] = (arrival[i-1] + cpu[i-1] + waiting[i-1]) - arrival[i];

        if(waiting[i] < 0)
            waiting[i] = 0;
    }

    for(int i = 0; i < n; i++) {
        turnaround[i] = waiting[i] + cpu[i];
    }

    for(int i = 0; i < n; i++) {
        cout << "Process " << pid[i]
             << " Waiting Time: " << waiting[i]
             << " Turnaround Time: " << turnaround[i] << endl;
    }

    return 0;
}