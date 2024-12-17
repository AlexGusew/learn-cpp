#include <iostream>
#include <cstdio>
#include <string>
#include <vector>

int main () {
  std::vector<int> vec = {1, 2, 3};
  for (int i = 0; i < vec.size(); i++) {
    std::cout << vec[i] << " ";
  }
  return 0;
}
