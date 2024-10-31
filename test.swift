//: A UIKit based Playground for presenting user interface
// 
// aaaa
import UIKit
import PlaygroundSupport
// ここの部分は自動で作成されます
class MyViewController : UIViewController {
  override func loadView() {
    var a = 0
    let view = UIView()
    // 画面の背景色（白）
    view.backgroundColor = .white
    // ラベルの追加
    let label = UILabel()
    // ラベルの位置、幅、高さ
    label.frame = CGRect(x: 0, y: 100, width: 380, height: 50)
    // ラベル内の文字
    label.text = "Hello World!"
    // ラベルのテキスト色白（青）
    label.textColor = .blue
    // ラベルの背景色（黄色）
    label.backgroundColor = .yellow
    // ラベル内の文字の位置（中央揃え）
    label.textAlignment = NSTextAlignment.center
    // ラベルを画面に追加
    view.addSubview(label)

    // ボタンの追加（位置、幅、高さも合わせて指定）
    let button = UIButton(frame: CGRect(x: 100, y: 200, width:180, height: 50))
    // ボタン内の文字
    button.setTitle("Test", for: UIControl.State.normal);
    // ボタンが押された際に onClick メソッドを呼び出すよう設定
    button.addTarget(self, action: #selector(self.onClick(_:)), for: .touchUpInside)
    // ボタンの背景色（垢）
    button.backgroundColor = .red
    // ボタンを画面に追加
    view.addSubview(button)
    // 画面の表示
    self.view = view
 }

  // アラート表示
  @objc func onClick(_ sender: AnyObject){
    // アラートの作成
    let alert: UIAlertController = UIAlertController(title: "メッセージ", message: "ボタンが押されました", preferredStyle: .alert)
    // アラート内のOKボタンの作成
    let okAction = UIAlertAction(title: "OK", style: .default) { action in
     //OKを押した時のログメッセージ
     print("OKが押されました")
    }
    // アラートにボタンを追加
    alert.addAction(okAction)
    // アラートを画面に表示
    self.present(alert, animated: true, completion: nil)
  }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
