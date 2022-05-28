//
//  300.longest-increasing-subsequence.swift
//  Leetcode-Swift
//
//  Created by devshiye on 2021/4/21.
//

import Foundation

/*
 300. 最长递增子序列 (中等)
 https://leetcode-cn.com/problems/longest-increasing-subsequence/
 */

class Solution_300 {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        if nums.isEmpty {
            return 0
        }

        let count = nums.count
        var dp = [Int](repeating: 1, count: count)
        var ans = 1

        for i in 1..<count {
            let curNumber = nums[i]
            for j in 0..<i {
                if nums[j] < curNumber {
                    dp[i] = max(dp[i], dp[j] + 1)
                }
            }
            ans = max(ans, dp[i])
        }

        return ans
    }
}
