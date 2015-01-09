Quick Start

・検索対象のソースの準備
/usr/local/src/milk/hoge 以下にプロジェクトごとにディレクトリを用意してソースを入れます

ex.
 cd /usr/local/src/milk/github
 git clone https://github.com/playgameservices/android-basic-samples.git

 /usr/local/src/android/master
                       /kitkat
                       /lollipop 
等２階層目にプロジェクトがくるようにします

・イメージのビルド or ダウンロード
$ docker build -t milkode .

・起動
$ docker run -d --name milkode -v /usr/local/src/milk:/milk -p 9292:9292 arimakouyou/milkode
 -it とかつけとくとログが標準出力に出てくる



・Webサイトを開く
 インデックスを作るのでちょっと時間が立ってから

http://localhost:9292/ (on Linux)
http://w.x.y.z:9292/ (on OS X, boot2docker ip to locate your IP)

