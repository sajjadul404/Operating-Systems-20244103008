#include <bits/stdc++.h>
using namespace std;

unordered_map<char, vector<char>> graph;
unordered_set<char> visited;
unordered_set<char> recStack;

bool hasCycle(char node) {
    if (recStack.count(node)) return true;
    if (visited.count(node)) return false;

    visited.insert(node);
    recStack.insert(node);

    for (char neighbor : graph[node]) {
        if (hasCycle(neighbor))
            return true;
    }

    recStack.erase(node);
    return false;
}

int main() {
    int nodes, edges;
    cin >> nodes >> edges;
    char u, v;

    for (int i = 0; i < edges; i++) {
        cin >> u >> v;
        graph[u].push_back(v);
    }
    
    for (auto &pair : graph) {
        if (hasCycle(pair.first)) {
            cout << "Deadlock: Yes" << endl;
            return 0;
        }
    }

    cout << "Deadlock: No" << endl;
    return 0;
}