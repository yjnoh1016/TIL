# 하노이의 탑

```swift
import Foundation

func honoi(n: Int, from: Character, to:Character, by:Character){
    if n==1 { // 종료조건 (n = 1 이 문제 범위에서 가장 작은 단위)
        print("원반 \(n)을 \(from)에서 \(to)로 이동")
    } else {
        honoi(n: n-1, from: from, to: by, by: to) // a 축에서 c 축으로 원판들을 이동
        print("원반 \(n)을 \(from)에서 \(to)로 이동") // 위에 아무것도 없으니 젤 무거운 놈 b 축으로 이동시키자!
        honoi(n: n-1, from: by, to: to, by: from) // c 에 있던 원판들 b 축에 다시 쌓기
    }
}

honoi(n: 3, from: "a", to: "b", by: "c") // n은 원반 개수, a에서 b로 c를 거쳐서
```
