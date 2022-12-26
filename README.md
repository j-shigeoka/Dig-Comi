# ディグコミ

## サイト概要
### サイトテーマ
自分が作った漫画を投稿でき、気になる漫画を読めるコミュニティサイト

### テーマを選んだ理由
漫画を読むことが好きなのですが、世の中にはまだ沢山の才能のある人がいると思うので、その人たちが描いた作品に出会いたいと想い、このテーマにしました。

### ターゲットユーザ
漫画が好きな人

### 主な利用シーン
描いた漫画を投稿する時、投稿された漫画を読みたい時

## 設計書
...

## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- IDE：Cloud9

## 使用素材
- イラストAC
- https://www.ac-illust.com/main/detail.php?id=23372171&word=%E3%82%82%E3%81%90%E3%82%89
- https://www.ac-illust.com/main/detail.php?id=23174987&word=%E3%82%B7%E3%83%B3%E3%83%97%E3%83%AB%E4%BA%BA%E7%89%A9%E3%80%80AI%E3%81%AB%E3%82%A2%E3%82%B7%E3%82%B9%E3%83%88%E3%81%97%E3%81%A6%E3%82%82%E3%82%89%E3%81%86%E4%BA%BA
- https://www.ac-illust.com/main/detail.php?id=23170261&word=AI%E3%81%AB%E3%83%87%E3%83%BC%E3%82%BF%E3%82%92%E9%A3%9F%E3%81%B9%E3%81%95%E3%81%9B%E3%82%8B%E4%BA%BA
- https://www.ac-illust.com/main/detail.php?id=23330649&word=%E3%82%B7%E3%83%B3%E3%83%97%E3%83%AB%E4%BA%BA%E7%89%A9%E3%83%9D%E3%83%BC%E3%82%BA%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA%E3%80%80%E9%A7%86%E3%81%91%E4%B8%8A%E3%81%8C%E3%82%8B%E4%BA%BA#goog_rewarded
- https://www.ac-illust.com/main/detail.php?id=23325186&word=%E3%82%B7%E3%83%B3%E3%83%97%E3%83%AB%E4%BA%BA%E7%89%A9%E3%83%9D%E3%83%BC%E3%82%BA%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA%E3%80%80%E5%AF%92%E6%9A%96%E3%82%92%E7%99%BB%E3%82%8B%E4%BA%BA#goog_rewarded
- https://www.ac-illust.com/main/detail.php?id=23323307&word=%E3%82%B7%E3%83%B3%E3%83%97%E3%83%AB%E4%BA%BA%E7%89%A9%E3%83%9D%E3%83%BC%E3%82%BA%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA%E3%80%80%E5%A3%81%E3%82%92%E5%A3%8A%E3%81%99%E4%BA%BA
- https://www.ac-illust.com/main/detail.php?id=23325183&word=%E3%82%B7%E3%83%B3%E3%83%97%E3%83%AB%E4%BA%BA%E7%89%A9%E3%83%9D%E3%83%BC%E3%82%BA%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA%E3%80%80%E5%AF%92%E6%9A%96%E3%82%92%E7%99%BB%E3%82%8B%E4%BA%BA
- https://www.ac-illust.com/main/detail.php?id=23330694&word=%E4%BD%93%E8%82%B2%E5%BA%A7%E3%82%8A%E3%82%92%E3%81%99%E3%82%8B%E7%84%A1%E6%B0%97%E5%8A%9B%E3%81%AA%E6%A3%92%E4%BA%BA%E9%96%93#goog_rewarded
- https://www.ac-illust.com/main/detail.php?id=23336114&word=%E3%82%B7%E3%83%B3%E3%83%97%E3%83%AB%E4%BA%BA%E7%89%A9%E3%83%9D%E3%83%BC%E3%82%BA%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA%E3%80%80%E7%A9%8D%E3%81%BF%E4%B8%8A%E3%81%92%E3%82%8B%E4%BA%BA
- https://www.ac-illust.com/main/detail.php?id=23325187&word=%E3%82%B7%E3%83%B3%E3%83%97%E3%83%AB%E4%BA%BA%E7%89%A9%E3%83%9D%E3%83%BC%E3%82%BA%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA%E3%80%80%E8%83%8C%E4%B8%AD%E3%82%92%E6%8A%BC%E3%81%99
- https://www.ac-illust.com/main/detail.php?id=23333200&word=%E3%82%B7%E3%83%B3%E3%83%97%E3%83%AB%E4%BA%BA%E7%89%A9%E3%83%9D%E3%83%BC%E3%82%BA%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA%E3%80%80%E5%AF%92%E3%81%842
- https://www.ac-illust.com/main/detail.php?id=23338561&word=%E3%82%B7%E3%83%B3%E3%83%97%E3%83%AB%E4%BA%BA%E7%89%A9%E3%83%9D%E3%83%BC%E3%82%BA%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA%E3%80%80%E7%A9%BA%E3%82%92%E4%BB%B0%E3%81%90%E4%BA%BA
- https://www.ac-illust.com/main/detail.php?id=23330650&word=%E3%82%B7%E3%83%B3%E3%83%97%E3%83%AB%E4%BA%BA%E7%89%A9%E3%83%9D%E3%83%BC%E3%82%BA%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA%E3%80%80%E5%87%BA%E4%B8%96%E7%AB%B6%E4%BA%89&searchId=
- https://www.ac-illust.com/main/detail.php?id=23353687&word=%E3%83%89%E3%83%83%E3%83%88%E3%81%AA%E5%90%B9%E3%81%8D%E5%87%BA%E3%81%97%E3%82%A2%E3%82%A4%E3%82%B3%E3%83%B3%EF%BC%92&searchId=
- https://www.ac-illust.com/main/detail.php?id=23323283&word=%E5%A3%81%E3%82%92%E8%B2%AB%E3%81%8F%E3%83%91%E3%83%B3%E3%83%81%E3%81%AE%E3%82%A4%E3%83%A9%E3%82%B9%E3%83%88%E7%B4%A0%E6%9D%90&searchId=
- https://www.ac-illust.com/main/detail.php?id=23333203&word=%E3%82%B7%E3%83%B3%E3%83%97%E3%83%AB%E4%BA%BA%E7%89%A9%E3%83%9D%E3%83%BC%E3%82%BA%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA%E3%80%80%E5%AF%92%E3%81%844&searchId=
- https://www.ac-illust.com/main/detail.php?id=23333204&word=%E3%82%B7%E3%83%B3%E3%83%97%E3%83%AB%E4%BA%BA%E7%89%A9%E3%83%9D%E3%83%BC%E3%82%BA%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA%E3%80%80%E5%AF%92%E3%81%845&searchId=