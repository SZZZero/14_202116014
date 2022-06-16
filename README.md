# MoviePlayer
버튼을 누르면 앱 내부에 저장되어 있는 비디오 파일이 바로 재생되도록 하고 외부의 링크 영상을 재생할 수 있다.

### 구현 목표
아이폰 앱에서 비디오 파일을 재생하는 것을 목표로 한다.   
애플 iOS에서 제공하는 AVPlayerViewController 사용하면 앱 내부에 저장되어 있는 비디오 파일뿐만 아니라 외부에 링크된 비디오 파일도 간단하게 재생할 수 있도록 한다

## 14장 코드

```
 @IBAction func btnPlayInternalMovie(_ sender: UIButton) {
        let filePath: String? = Bundle.main.path(forResource: "FastTyping", ofType: "mp4") 
        let url = NSURL(fileURLWithPath: filePath!) 
        playVideo(url: url) 
        
        let url = NSURL()!
        
        let playerController = AVPlayerViewController()
        
        let player = AVPlayer(url: url as URL)
        
        playerController.player = player
        
        self.present(playerController, animated: true) {
            player.play()
        }
    }
```
비디오 파일명을 사용하여 비디오가 저장된 앱 내부의 파일 경로를 받아옵니다    
앱 내부 파일명을 NSURL 형식으로 변경합니다.     
AVPlayerViewController의 인스턴스 생성합니다.     
앞에서 얻은 비디오 URL로 초기화된 AVPlayer의 인스턴스를 생성합니다.     
AVPlayerViewController의 Player 속성에 AVPlayer에 생성된 인스턴스를 할당합니다.    
