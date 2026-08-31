import 'dart:math';

void main() {
  print(fib(9));
  print(fibonacci(9));

  print(climbStairs(4));

  print(rob([5, 10, 3, 1, 9]));
}

/// 0, 1, 1, 2, 3, 5, 8, 13, 21, 34 ...
/// The Problem with Recursion when calculating Fibonacci:
// Fibonacci recurrence, to compute fib(5), we call fib(4) and fib(3). But fib(3) is also called inside fib(4), so fib(3) is computed twice.
// Same subproblems recalculated over and over --> exponential time complexity.

// Memorization approach of DP. Memorization = recursion + caching
Map<int, int> memo = {};

int fib(int n) {
  if (n <= 1) return n;

  if (memo.containsKey(n)) return memo[n]!;

  memo[n] = fib(n - 1) + fib(n - 2);

  return memo[n]!;
}

// Tabulation approach or bottoms up of DP.
int fibonacci(int n) {
  if (n <= 1) return n;

  List<int> dp = List.filled(n + 1, 0);

  dp[1] = 1;

  for (int i = 2; i <= n; i++) {
    dp[i] = dp[i - 1] + dp[i - 2];
  }

  return dp[n];
}

// dp[0] = 0,
// dp[1] = 1,
// dp[2] = dp[2-1] + dp[2-2] = 1 + 0 = 1,
// dp[3] = dp[3-1] + dp[3-2] = 2 + 1 = 3,
// dp[4] = dp[4-1] + dp[4-2] = 3 + 2 = 5,
// dp[5] = dp[5-1] + dp[5-2] = ...

/// Climb Stairs problem, either one step or two steps
// like 1,2,3,4 is the stair numbers
// to go to the 4th number there are three ways:
// 1,2,3,4
// 1,3,4
// 1,2,4
// This method calculates the number of ways to go to a specific stair number
int climbStairs(int n) {
  if (n <= 2) return n;

  List<int> dp = List.filled(n + 1, 0);

  dp[1] = 1;
  dp[2] = 2;

  for (int i = 2; i <= n; i++) {
    dp[i] = dp[i - 1] + dp[i - 2];
  }

  return dp[n];
}

/// House robber problem
// Like there are 5 house like:
// |5| |10 |3| |1| |9|
// Each has its own value of money
// The robber wants to take the maximum amount of money but he can't rob the
// houses which are next to each other like if he robs |3| he can't rob |10|
// Here the maximum number of money the robber can rob based on each house he
// chooses to rob
//  5   10  10   11  19
// |5| |10| |3| |1| |9|
int rob(List<int> moneys) {
  int n = moneys.length;

  if (n == 0) return 0;
  if (n == 1) return moneys[0];

  List<int> dp = List.filled(n, 0);

  dp[0] = moneys[0];
  dp[1] = max(dp[0], dp[1]);

  for (int i = 2; i < n; i++) {
    dp[i] = max(dp[i - 1], moneys[i] + dp[i - 2]);
  }

  return dp[n - 1];
}
