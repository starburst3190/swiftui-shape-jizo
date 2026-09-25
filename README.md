<div align="center">

# SwiftUI 形狀練習 - 超級斗笠地藏

[![Swift](https://img.shields.io/badge/Swift-5.0-F05138?logo=swift&logoColor=white)](https://www.swift.org/)
[![SwiftUI](https://img.shields.io/badge/UI-SwiftUI-0D96F6?logo=swift&logoColor=white)](https://developer.apple.com/xcode/swiftui/)
[![iOS](https://img.shields.io/badge/iOS-27.0%2B-000000?logo=apple&logoColor=white)](https://developer.apple.com/ios/)
[![Xcode](https://img.shields.io/badge/Xcode-27.1-147EFB?logo=xcode&logoColor=white)](https://developer.apple.com/xcode/)

</div>

行動載具課程第二次作業：只用 SwiftUI 的形狀（Shape、Path）拼出《貓咪大戰爭》的角色「超級斗笠地藏」。

本專案為課堂練習，不作任何商業用途。

<table>
  <tr>
    <th width="50%">參考圖</th>
    <th width="50%">SwiftUI 成品</th>
  </tr>
  <tr>
    <td align="center"><img src="Documentation/Images/Reference.png" alt="貓咪大戰爭遊戲內的超級斗笠地藏" width="520"></td>
    <td align="center"><img src="Documentation/Images/Jizo_v2.png" alt="用 SwiftUI 形狀畫出的超級斗笠地藏第二版" width="260"></td>
  </tr>
</table>

## 地藏改版

第一版完成（已在 commit 歷史中）後，後續有再細修成第二版，更加還原原圖。

<table>
  <tr>
    <th width="50%">v1</th>
    <th width="50%">v2</th>
  </tr>
  <tr>
    <td align="center"><img src="Documentation/Images/Jizo_v1.png" alt="用 SwiftUI 形狀畫出的超級斗笠地藏第一版" width="260"></td>
    <td align="center"><img src="Documentation/Images/Jizo_v2.png" alt="用 SwiftUI 形狀畫出的超級斗笠地藏第二版" width="260"></td>
  </tr>
</table>

## 使用的形狀與語法

- 內建形狀：`Circle`、`Ellipse`、`Capsule`、`Rectangle`、`RoundedRectangle`
- 自訂 Shape：`Hat`（斗笠）、`Flash`（槍口火光）
- `Path`：蓑衣、籃子、耳朵、嘴巴、領巾等不規則形狀，使用 `addLine`、`addQuadCurve`、`addCurve`
- 版面與變形：`ZStack`、`.frame`、`.offset`、`.rotationEffect`、`.scaleEffect`
- 效果：`RadialGradient`、`.blur`、`.shadow`
- 顏色：在 `Assets.xcassets` 建立自訂 Color Set（`StrawCape`、`StrawHat`、`Jizo`、`Scarf`）

「超級斗笠地藏」角色及《貓咪大戰爭》（にゃんこ大戦争 / The Battle Cats）相關的角色設計、名稱與圖片，版權皆屬 **PONOS Corporation** 所有。本專案僅為個人學習用途的仿繪練習，與 PONOS 無任何關聯。
