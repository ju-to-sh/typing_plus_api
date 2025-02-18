# ゲームリストデータ
def game_lists
  [
    { title: 'Active Record', content: 'Active Recordに関する問題', game_type: 0, level: 3, category: 1 },
    { title: 'CRUD処理', content: 'CRUD処理に関する問題', game_type: 0, level: 2, category: 1 },
    { title: 'Ruby 条件分岐', content: 'Rubyの条件分岐に関する問題', game_type: 0, level: 1, category: 0 },
    { title: 'Ruby 配列', content: 'Rubyの配列に関する問題', game_type: 0, level: 1, category: 0 },
    { title: 'Ruby基本構文', content: 'Rubyでよく使用する基本構文に関するタイピング問題', game_type: 1, level: 2, category: 0 },
    { title: 'Rails基本構文', content: 'Railsでよく使用する基本構文に関するタイピング問題', game_type: 1, level: 3, category: 1 },
    { title: 'モデルスペック', content: 'RSpecのmodel specに関するタイピング問題', game_type: 1, level: 4, category: 1 },
    { title: 'システムスペック', content: 'RSpecのsystem specに関するタイピング問題', game_type: 1, level: 5, category: 1 },
    { title: 'リクエストスペック', content: 'RSpecのrequest specに関するタイピング問題', game_type: 1, level: 5, category: 1 },
    { title: 'Action View', content: 'Railsのビューに関するタイピング問題', game_type: 1, level: 4, category: 1 },
    { title: 'Active Model', content: 'Railsのモデルに関するタイピング問題', game_type: 1, level: 3, category: 1 },
    { title: 'Action Controller', content: 'Railsのコントローラに関するタイピング問題', game_type: 1, level: 3, category: 1 },
    { title: 'Active Record', content: 'Active Recordのクエリインターフェイスに関するタイピング問題', game_type: 1, level: 1, category: 1 },
    { title: 'バリデーション', content: 'Railsのバリデーションに関するタイピング問題', game_type: 1, level: 2, category: 1 },
    { title: 'RSpec', content: 'Active Recordに関する問題', game_type: 0, level: 3, category: 1 },
    { title: 'バリデーション', content: 'Active Recordに関する問題', game_type: 0, level: 2, category: 1 },
    { title: 'CORS', content: 'Active Recordに関する問題', game_type: 0, level: 5, category: 1 },
    { title: 'セキュリティ', content: 'Active Recordに関する問題', game_type: 0, level: 4, category: 1 },
    { title: 'Ruby Silver模擬問題', content: 'Active Recordに関する問題', game_type: 0, level: 2, category: 0 },
    { title: 'Ruby Gold模擬問題', content: 'Active Recordに関する問題', game_type: 0, level: 3, category: 0 }
  ]
end

# クイズデータ
def questions
  [
    { game_list_id: 1,
      content: "Active Recordについて正しい記述となるように(  )内に入る適切な言葉を選びなさい。\nActive Recordとは、(  )に相当するものであり、ビジネスデータとビジネスロジックを表すシステムの階層である。" },
    { game_list_id: 1, content: 'O/Rマッピングの主な目的について最も適切なものを選びなさい。' },
    { game_list_id: 1, content: 'ActiveRecordのコールバックで、レコードが保存される前に実行されるコールバックを選びなさい' },
    { game_list_id: 1,
      content: 'ActiveRecordのアソシエーションで、has_manyの関連付けを持つモデルが子レコードを削除する際に、子レコードも一緒に削除されるようにするためのオプションを選びなさい' },
    { game_list_id: 1, content: 'ActiveRecordで、一意性を検証するためのバリデーションを選びなさい' },
    { game_list_id: 2, content: 'RailsのRESTfulルーティングにおいて、editアクションに対応するHTTPメソッドを選びなさい' },
    { game_list_id: 2,
      content: 'Railsのコントローラにおいて、before_actionフィルターを使用して特定のアクションの前に実行されるメソッドを指定する際、アクションをスキップするために使用するメソッドを選びなさい' },
    { game_list_id: 2, content: 'Railsのresourcesルーティングで、特定のリソースのネストされたリソースを定義する際の正しい記述を選びなさい' },
    { game_list_id: 2, content: 'Railsのストロングパラメータを使用して、userパラメータのうちnameとemailのみを許可するための正しい記述を選びなさい' },
    { game_list_id: 2, content: 'Railsのコントローラで、特定のアクションでのみ適用されるbefore_actionフィルターを設定するための正しい記述を選びなさい' },
    { game_list_id: 3, content: 'Rubyで条件分岐を一行で書く場合の正しい構文を選びなさい' },
    { game_list_id: 3, content: 'Rubyのcase文で、全ての条件が偽である場合に実行される節を選びなさい' },
    { game_list_id: 3, content: 'Rubyでunless文を使うときに注意すべきことを選びなさい' },
    { game_list_id: 3, content: 'Rubyの三項演算子を使用する正しい方法を選びなさい' },
    { game_list_id: 3, content: 'Rubyのcase文でwhen節を範囲オブジェクトで使用する場合、次のうち正しい構文を選びなさい' },
    { game_list_id: 4, content: 'Rubyで配列の要素をシャッフルするためのメソッドを選びなさい' },
    { game_list_id: 4, content: 'Rubyで配列の中から重複した要素を取り除くメソッドを選びなさい' },
    { game_list_id: 4, content: 'Rubyで配列の全ての要素が特定の条件を満たすかどうかを調べるメソッドを選びなさい' },
    { game_list_id: 4, content: "次のコードの出力結果を選びなさい\n
      arr = [10, 20, 30, 40, 50]\n
      result = arr.each_slice(2).map(&:reverse).flatten\n
      puts result" },
    { game_list_id: 4, content: "次のコードの出力結果を選びなさい\n
      arr = [[1, 2], [3, 4], [5, 6]]\n
      result = arr.transpose\n
      puts result.inspect" },
    { game_list_id: 15, content: 'Rspecは何のために使用されるフレームワークですか？' },
    { game_list_id: 15, content: 'Rspecのテストで、期待値と実際の値が一致することを確認するためのマッチャーはどれですか？' },
    { game_list_id: 15, content: 'Rspecのdescribeブロックは何を定義しますか？' },
    { game_list_id: 15, content: 'Rspecのitブロックの目的は何ですか？' },
    { game_list_id: 15, content: 'Rspecで共有するセットアップコードをどのように記述しますか？' },
    { game_list_id: 16, content: 'Railsのバリデーションで、必須項目を指定するバリデーションは何ですか？' },
    { game_list_id: 16, content: 'Railsのバリデーションで、データベースに存在するかどうかを確認するバリデーションは何ですか？' },
    { game_list_id: 16, content: 'Railsのバリデーションで、特定の長さ以上であることを確認するバリデーションはどれですか？' },
    { game_list_id: 16, content: 'Railsで、属性がユニークであることを確認するためのバリデーションは何ですか？' },
    { game_list_id: 16, content: 'Railsのバリデーションで、正しいメールアドレス形式を確認するバリデーションは何ですか？' },
    { game_list_id: 17, content: 'CORSのフルスペルは何ですか？' },
    { game_list_id: 17, content: 'CORSの設定をサーバー側で行う目的は何ですか？' },
    { game_list_id: 17, content: 'CORSのプリフライトリクエストとは何ですか？' },
    { game_list_id: 17, content: 'CORSで、特定のオリジンからのリクエストを許可する設定はどのように行いますか？' },
    { game_list_id: 17, content: 'CORS設定を行う際に、Access-Control-Allow-Originヘッダーの役割は何ですか？' },
    { game_list_id: 18, content: 'ウェブアプリケーションでのSQLインジェクション攻撃を防ぐための対策は何ですか？' },
    { game_list_id: 18, content: 'クロスサイトスクリプティング（XSS）攻撃とは何ですか？' },
    { game_list_id: 18, content: 'セッションハイジャック攻撃を防ぐために、セッションIDをどのように扱うべきですか？' },
    { game_list_id: 18, content: 'HTTPSが提供するセキュリティ機能は何ですか？' },
    { game_list_id: 18, content: 'セキュリティ上、パスワードを安全に保存するためのベストプラクティスは何ですか？' },
    { game_list_id: 19, content: 'Rubyのメソッドで、引数を省略可能にするために使う記号は何ですか？' },
    { game_list_id: 19, content: 'Rubyで、配列から要素を削除するメソッドはどれですか？' },
    { game_list_id: 19, content: 'Rubyのunless文の用途は何ですか？' },
    { game_list_id: 19, content: 'Rubyのブロックの書き方にはどのような形式がありますか？' },
    { game_list_id: 19, content: 'Rubyで、メソッドの戻り値を明示的に指定するためのキーワードは何ですか？' },
    { game_list_id: 20, content: 'Rubyで、モジュールのメソッドをクラスに追加するために使うキーワードは何ですか？' },
    { game_list_id: 20, content: 'Rubyで、includeとextendの違いは何ですか？' },
    { game_list_id: 20, content: 'RubyのEnumerableモジュールに含まれる代表的なメソッドは何ですか？' },
    { game_list_id: 20, content: 'Rubyのメソッドで、可変長引数を受け取るために使う記号は何ですか？' },
    { game_list_id: 20, content: 'Rubyで、ブロックを使ってイテレーションを行うための代表的なメソッドは何ですか？' }
  ]
end

# クイズ選択肢データ
def question_choices
  [
    { quiz_id: 1, content: 'モデル', is_correct: true },
    { quiz_id: 1, content: 'コントローラ', is_correct: false },
    { quiz_id: 1, content: 'ビュー', is_correct: false },
    { quiz_id: 1, content: 'ルーティング', is_correct: false },
    { quiz_id: 2, content: 'データベースのスキーマを自動生成すること', is_correct: false },
    { quiz_id: 2, content: 'オブジェクト指向プログラミングとリレーショナルデータベースの間のインピーダンスミスマッチを解消すること', is_correct: true },
    { quiz_id: 2, content: 'データベースのクエリ性能を向上させること', is_correct: false },
    { quiz_id: 2, content: 'データベースのセキュリティを強化すること', is_correct: false },
    { quiz_id: 3, content: 'after_create', is_correct: false },
    { quiz_id: 3, content: 'before_update', is_correct: false },
    { quiz_id: 3, content: 'after_save', is_correct: false },
    { quiz_id: 3, content: 'before_save', is_correct: true },
    { quiz_id: 4, content: 'delete_all', is_correct: false },
    { quiz_id: 4, content: 'destroy_all', is_correct: false },
    { quiz_id: 4, content: 'dependent: :delete', is_correct: false },
    { quiz_id: 4, content: 'dependent: :destroy', is_correct: true },
    { quiz_id: 5, content: 'validates :attribute, unique: true', is_correct: false },
    { quiz_id: 5, content: 'validates :attribute, uniqueness: true', is_correct: true },
    { quiz_id: 5, content: 'validates_uniqueness_of :attribute', is_correct: false },
    { quiz_id: 5, content: 'validate :attribute, uniqueness: true', is_correct: false },
    { quiz_id: 6, content: 'GET', is_correct: true },
    { quiz_id: 6, content: 'POST', is_correct: false },
    { quiz_id: 6, content: 'PUT', is_correct: false },
    { quiz_id: 6, content: 'PATCH', is_correct: false },
    { quiz_id: 7, content: 'skip_action', is_correct: false },
    { quiz_id: 7, content: 'skip_before_action', is_correct: true },
    { quiz_id: 7, content: 'skip_filter', is_correct: false },
    { quiz_id: 7, content: 'skip_around_action', is_correct: false },
    { quiz_id: 8, content: 'resources :articles do nested_resources :comments end', is_correct: false },
    { quiz_id: 8, content: 'resources :articles with :comments', is_correct: false },
    { quiz_id: 8, content: 'resources :articles, nested: :comments', is_correct: false },
    { quiz_id: 8, content: 'resources :articles do resources :comments end', is_correct: true },
    { quiz_id: 9, content: 'params.require(:user).permit(:name, :email)', is_correct: true },
    { quiz_id: 9, content: 'params.allow(:user).only(:name, :email)', is_correct: false },
    { quiz_id: 9, content: 'arams.require(:user).allow(:name, :email)', is_correct: false },
    { quiz_id: 9, content: 'params.permit(:user).require(:name, :email)', is_correct: false },
    { quiz_id: 10, content: 'before_filter :authenticate_user, only: [:show, :edit]', is_correct: false },
    { quiz_id: 10, content: 'before_action :authenticate_user, if: [:show, :edit]', is_correct: false },
    { quiz_id: 10, content: 'before_action :authenticate_user, only: [:show, :edit]', is_correct: true },
    { quiz_id: 10, content: 'before_action :authenticate_user, except: [:show, :edit]', is_correct: false },
    { quiz_id: 11, content: 'if condition then do_something', is_correct: false },
    { quiz_id: 11, content: 'condition ? do_something : do_something_else', is_correct: false },
    { quiz_id: 11, content: 'do_something if condition', is_correct: true },
    { quiz_id: 11, content: 'condition then do_something', is_correct: false },
    { quiz_id: 12, content: 'else', is_correct: true },
    { quiz_id: 12, content: 'default', is_correct: false },
    { quiz_id: 12, content: 'when none', is_correct: false },
    { quiz_id: 12, content: 'nil', is_correct: false },
    { quiz_id: 13, content: 'unlessは条件が真のときに実行される', is_correct: false },
    { quiz_id: 13, content: 'unlessはelse節を持つことができない', is_correct: false },
    { quiz_id: 13, content: 'unlessは条件が偽のときに実行される', is_correct: true },
    { quiz_id: 13, content: 'unlessはブロックをサポートしていない', is_correct: false },
    { quiz_id: 14, content: 'condition ? if_false : if_true', is_correct: false },
    { quiz_id: 14, content: 'condition ? if_true : if_false', is_correct: true },
    { quiz_id: 14, content: 'if_true ? condition : if_false', is_correct: false },
    { quiz_id: 14, content: 'if_false : if_true ? condition', is_correct: false },
    { quiz_id: 15, content: 'when (1..5)', is_correct: false },
    { quiz_id: 15, content: 'when [1..5]', is_correct: false },
    { quiz_id: 15, content: 'when {1..5}', is_correct: false },
    { quiz_id: 15, content: 'when 1..5', is_correct: true },
    { quiz_id: 16, content: 'min', is_correct: false },
    { quiz_id: 16, content: 'shuffle', is_correct: true },
    { quiz_id: 16, content: 'randomize', is_correct: false },
    { quiz_id: 16, content: 'scramble', is_correct: false },
    { quiz_id: 17, content: 'uniq', is_correct: true },
    { quiz_id: 17, content: 'unique', is_correct: false },
    { quiz_id: 17, content: 'distinct', is_correct: false },
    { quiz_id: 17, content: 'remove_duplicates', is_correct: false },
    { quiz_id: 18, content: 'any?', is_correct: false },
    { quiz_id: 18, content: 'include?', is_correct: false },
    { quiz_id: 18, content: 'whole?', is_correct: false },
    { quiz_id: 18, content: 'all?', is_correct: true },
    { quiz_id: 19, content: '[20, 10, 40, 30, 50]', is_correct: true },
    { quiz_id: 19, content: '[10, 20, 30, 40, 50]', is_correct: false },
    { quiz_id: 19, content: '[10, 20, 30, 40]', is_correct: false },
    { quiz_id: 19, content: '[50, 40, 30, 20, 10]', is_correct: false },
    { quiz_id: 20, content: '[[1, 2, 3, 4, 5, 6]]', is_correct: false },
    { quiz_id: 20, content: '[[1, 2], [3, 4], [5, 6]]', is_correct: false },
    { quiz_id: 20, content: '[[1, 2], [3, 4]]', is_correct: false },
    { quiz_id: 20, content: '[[1, 3, 5], [2, 4, 6]]', is_correct: true },
    { quiz_id: 21, content: '自動コード成形', is_correct: false },
    { quiz_id: 21, content: 'デバッグツール', is_correct: false },
    { quiz_id: 21, content: 'モニタリングツール', is_correct: false },
    { quiz_id: 21, content: 'テストフレームワーク', is_correct: true },
    { quiz_id: 22, content: 'have_http_status', is_correct: false },
    { quiz_id: 22, content: 'eq', is_correct: true },
    { quiz_id: 22, content: 'have_selector', is_correct: false },
    { quiz_id: 22, content: 'have_content', is_correct: false },
    { quiz_id: 23, content: 'テスト結果', is_correct: false },
    { quiz_id: 23, content: 'テストの状態', is_correct: false },
    { quiz_id: 23, content: 'テストの対象', is_correct: true },
    { quiz_id: 23, content: 'テストケース', is_correct: false },
    { quiz_id: 24, content: 'テスト対象の振る舞いを記述する', is_correct: true },
    { quiz_id: 24, content: 'テストの前に設定する', is_correct: false },
    { quiz_id: 24, content: 'テストの結果を表示する', is_correct: false },
    { quiz_id: 24, content: 'テストのサマリーを提供する', is_correct: false },
    { quiz_id: 25, content: 'after(:each)', is_correct: false },
    { quiz_id: 25, content: 'around(:each)', is_correct: false },
    { quiz_id: 25, content: 'before(:each)', is_correct: true },
    { quiz_id: 25, content: 'let', is_correct: false },
    { quiz_id: 26, content: 'presence', is_correct: true },
    { quiz_id: 26, content: 'length', is_correct: false },
    { quiz_id: 26, content: 'uniqueness', is_correct: false },
    { quiz_id: 26, content: 'format', is_correct: false },
    { quiz_id: 27, content: 'presence', is_correct: false },
    { quiz_id: 27, content: 'length', is_correct: false },
    { quiz_id: 27, content: 'exists', is_correct: true },
    { quiz_id: 27, content: 'uniqueness', is_correct: false },
    { quiz_id: 28, content: 'presence', is_correct: false },
    { quiz_id: 28, content: 'length', is_correct: true },
    { quiz_id: 28, content: 'format', is_correct: false },
    { quiz_id: 28, content: 'numericality', is_correct: false },
    { quiz_id: 29, content: 'uniqueness', is_correct: true },
    { quiz_id: 29, content: 'length', is_correct: false },
    { quiz_id: 29, content: 'presence', is_correct: false },
    { quiz_id: 29, content: 'format', is_correct: false },
    { quiz_id: 30, content: 'format', is_correct: true },
    { quiz_id: 30, content: 'length', is_correct: false },
    { quiz_id: 30, content: 'presence', is_correct: false },
    { quiz_id: 30, content: 'uniqueness', is_correct: false },
    { quiz_id: 31, content: 'Cross-Origin Resource Sharing', is_correct: true },
    { quiz_id: 31, content: 'Cross-Origin Request Sharing', is_correct: false },
    { quiz_id: 31, content: 'Cross-Origin Resource Security', is_correct: false },
    { quiz_id: 31, content: 'Cross-Origin Response Sharing', is_correct: false },
    { quiz_id: 32, content: 'サーバーとクライアントの通信を暗号化するため', is_correct: false },
    { quiz_id: 32, content: '異なるオリジン間でリソースの共有を許可するため', is_correct: true },
    { quiz_id: 32, content: 'ユーザー認証を強化するため', is_correct: false },
    { quiz_id: 32, content: 'サーバーの負荷を減らすため', is_correct: false },

    { quiz_id: 33, content: 'サーバーにデータを送信するリクエスト', is_correct: false },
    { quiz_id: 33, content: 'レスポンスのキャッシュを確認するためのリクエスト', is_correct: false },
    { quiz_id: 33, content: 'リクエストが正当であるかを確認するための事前リクエスト', is_correct: true },
    { quiz_id: 33, content: 'セッション情報を取得するリクエスト', is_correct: false },
    { quiz_id: 34, content: 'Access-Control-Allow-Originヘッダーにオリジンを指定する', is_correct: true },
    { quiz_id: 34, content: 'サーバーのIPアドレスを公開する', is_correct: false },
    { quiz_id: 34, content: 'データの圧縮を有効にする', is_correct: false },
    { quiz_id: 34, content: 'HTTPSを強制する', is_correct: false },
    { quiz_id: 35, content: 'リクエストのデータサイズを制限する', is_correct: false },
    { quiz_id: 35, content: 'レスポンスの形式を指定する', is_correct: false },
    { quiz_id: 35, content: 'APIのバージョンを管理する', is_correct: false },
    { quiz_id: 35, content: 'リクエスト元のオリジンを指定する', is_correct: true },
    { quiz_id: 36, content: 'ユーザーの入力をそのままデータベースに保存する', is_correct: false },
    { quiz_id: 36, content: 'プリペアドステートメントを使用する', is_correct: true },
    { quiz_id: 36, content: 'SQLクエリを動的に生成する', is_correct: false },
    { quiz_id: 36, content: 'セキュリティログを定期的に確認する', is_correct: false },
    { quiz_id: 37, content: 'ユーザーのブラウザに悪意のあるスクリプトを注入する攻撃', is_correct: true },
    { quiz_id: 37, content: 'ユーザーのセッションを乗っ取る攻撃', is_correct: false },
    { quiz_id: 37, content: 'サーバーへの過剰なリクエストを送る攻撃', is_correct: false },
    { quiz_id: 37, content: 'データベースのスキーマを変更する攻撃', is_correct: false },
    { quiz_id: 38, content: 'セッションIDをURLに含める', is_correct: false },
    { quiz_id: 38, content: 'セッションIDを保存せずに再利用する', is_correct: false },
    { quiz_id: 38, content: 'セッションIDを定期的に更新する', is_correct: true },
    { quiz_id: 38, content: 'セッションIDをブラウザのローカルストレージに保存する', is_correct: false },
    { quiz_id: 39, content: 'ユーザーの認証情報をクッキーに保存する', is_correct: false },
    { quiz_id: 39, content: 'セッションタイムアウトを設定する', is_correct: false },
    { quiz_id: 39, content: '通信内容を暗号化する', is_correct: true },
    { quiz_id: 39, content: 'サーバーのファイアウォールを設定する', is_correct: false },
    { quiz_id: 40, content: 'パスワードをハッシュ化して保存する', is_correct: true },
    { quiz_id: 40, content: 'パスワードをプレーンテキストで保存する', is_correct: false },
    { quiz_id: 40, content: 'パスワードをユーザーに直接送信する', is_correct: false },
    { quiz_id: 40, content: 'パスワードの再利用を許可する', is_correct: false },
    { quiz_id: 41, content: '*', is_correct: false },
    { quiz_id: 41, content: '&', is_correct: false },
    { quiz_id: 41, content: '!', is_correct: false },
    { quiz_id: 41, content: '?', is_correct: true },
    { quiz_id: 42, content: 'delete', is_correct: true },
    { quiz_id: 42, content: 'remove', is_correct: false },
    { quiz_id: 42, content: 'discard', is_correct: false },
    { quiz_id: 42, content: 'cut', is_correct: false },
    { quiz_id: 43, content: '条件が成立する場合に処理を実行する', is_correct: false },
    { quiz_id: 43, content: '無限ループを作成する', is_correct: false },
    { quiz_id: 43, content: '値を比較する', is_correct: false },
    { quiz_id: 43, content: '条件が成立しない場合に処理を実行する', is_correct: true },
    { quiz_id: 44, content: 'for...end形式とwhile...end形式', is_correct: false },
    { quiz_id: 44, content: 'if...else形式とunless...else形式', is_correct: false },
    { quiz_id: 44, content: 'do...end形式と{}形式', is_correct: true },
    { quiz_id: 44, content: 'begin...rescue形式とbegin...ensure形式', is_correct: false },
    { quiz_id: 45, content: 'yield', is_correct: false },
    { quiz_id: 45, content: 'break', is_correct: false },
    { quiz_id: 45, content: 'return', is_correct: true },
    { quiz_id: 45, content: 'continue', is_correct: false },
    { quiz_id: 46, content: 'require', is_correct: false },
    { quiz_id: 46, content: 'include_class', is_correct: false },
    { quiz_id: 46, content: 'use', is_correct: false },
    { quiz_id: 46, content: 'include', is_correct: true },
    { quiz_id: 47, content: 'includeはクラスメソッドを追加、extendはインスタンスメソッドを追加する', is_correct: false },
    { quiz_id: 47, content: 'includeはモジュールを読み込む、extendはモジュールを削除する', is_correct: false },
    { quiz_id: 47, content: 'includeはインスタンス変数を追加、extendはインスタンスメソッドを追加する', is_correct: false },
    { quiz_id: 47, content: 'includeはインスタンスメソッドを追加、extendはクラスメソッドを追加する', is_correct: true },
    { quiz_id: 48, content: 'map', is_correct: false },
    { quiz_id: 48, content: 'select', is_correct: false },
    { quiz_id: 48, content: 'find', is_correct: false },
    { quiz_id: 48, content: 'each', is_correct: true },
    { quiz_id: 49, content: '&', is_correct: false },
    { quiz_id: 49, content: '*', is_correct: true },
    { quiz_id: 49, content: '[]', is_correct: false },
    { quiz_id: 49, content: '{}', is_correct: false },
    { quiz_id: 50, content: 'find', is_correct: false },
    { quiz_id: 50, content: 'map', is_correct: false },
    { quiz_id: 50, content: 'each', is_correct: true },
    { quiz_id: 50, content: 'sort', is_correct: false }
  ]
end

# タイピング問題データ
def typing_questions
  [
    { game_list_id: 5, content: "fruits = ['apple', 'banana', 'cherry']\nfruits << 'date'" },
    { game_list_id: 5, content: "person = {name: 'Alice', age: 30, city: 'New York'}\nputs person[:name]" },
    { game_list_id: 5, content: "def greet(name)\n\t\"Hello, \#{name}!\"\nend\nputs greet('Bob')" },
    { game_list_id: 5, content: "numbers = [1, 2, 3, 4, 5]\nnumbers.each do |number|\n\tputs number * 2\nend" },
    { game_list_id: 5,
      content: "class Dog\n\tdef initialize(name)\n\t\t@name = name\n\tend\n\tdef bark\n\t\t\"\#{@name} says woof!\"\n\tend\nend\ndog = Dog.new('Rex')\nputs dog.bark" },
    { game_list_id: 6,
      content: "class ApplicationController < ActionController::Base\n\tprotect_from_forgery with::exception\nend" },
    { game_list_id: 6,
      content: "def create\n\t@article = Article.new(article_params)\n\tif @article.save\n\t\tredirect_to @article\n\telse\n\t\trender 'new'\n\tend\nend" },
    { game_list_id: 6, content: "resources :articles do\n\tresources :comments\nend" },
    { game_list_id: 6,
      content: "class Article < ApplicationRecord\n\thas_many :comments, dependent: :destroy\n\tvalidates :title, presence: true, length: { minimum: 5 }\nend" },
    { game_list_id: 6,
      content: "age = 18\nif age >= 18\n\tputs 'You are an adult.'\nelse\n\tputs 'You are a minor.'\nend" },
    { game_list_id: 7,
      content: "RSpec.describe User, type: :model do\n#モデルのバリデーションテスト\n\tit { should validate_presence_of(:email) }\nend" },
    { game_list_id: 7,
      content: "RSpec.describe User, type: :model do\n#モデルのアソシエーションテスト\n\tit { should have_many(:posts) }\nend" },
    { game_list_id: 7,
      content: "RSpec.describe User, type: :model do\n#モデルのカスタムバリデーションテスト\n\tit 'is invalid without a name' do\n\t\tuser = User.new(name: nil)\n\t\texpect(user).not_to be_valid\n\tend\nend" },
    { game_list_id: 7,
      content: "RSpec.describe User, type: :model do\n#モデルのコールバックテスト\n\tit 'downcases the email before saving' do\n\t\tuser = User.create(email: 'TEST@EXAMPLE.COM')\n\t\texpect(user.email).to eq('test@example.com')\n\tend\nend" },
    { game_list_id: 7,
      content: "RSpec.describe User, type: :model do\n#モデルのスコープテスト\n\tdescribe '.active' do\n\t\tit 'returns only active users' do\n\t\t\tuser = User.create(active: true)\n\t\t\texpect(User.active).to include(user)\n\t\tend\n\tend\nend" },
    { game_list_id: 8,
      content: "RSpec.describe 'User sign in', type: :system do\n#ユーザーサインインのテスト\n\tit 'signs me in' do\n\t\tvisit new_user_session_path\n\t\tfill_in 'Email', with: 'user@example.com'\n\t\tfill_in 'Password', with: 'password'\n \t\tclick_button 'Log in'\n\t\texpect(page).to have_content('Signed in successfully')\n\tend\nend" },
    { game_list_id: 8,
      content: "RSpec.describe 'User registration', type: :system do\n#ユーザー登録のテスト\n\tit 'registers a new user' do\n\t\tvisit new_user_registration_path\n\t\tfill_in 'Email', with: 'newuser@example.com'\n\t\tfill_in 'Password', with: 'password'\n\t\tclick_button 'Sign up'\n\t\texpect(page).to have_content('Welcome! You have signed up successfully')\n\tend\nend" },
    { game_list_id: 8,
      content: "RSpec.describe 'User profile', type: :system do\n#ユーザープロフィール表示のテスト\n\tit 'displays user profile' do\n\t\tuser = create(:user)\n\t\tvisit user_path(user)\n\t\texpect(page).to have_content(user.name)\n\tend\nend" },
    { game_list_id: 8,
      content: "RSpec.describe 'User logout', type: :system do\n#ユーザーログアウトのテスト\n\tit 'logs me out' do\n\t\tvisit destroy_user_session_path\n\t\texpect(page).to have_content('Signed out successfully')\n\tend\nend" },
    { game_list_id: 8,
      content: "RSpec.describe 'User edit', type: :system do\n#ユーザー編集のテスト\n\tit 'edits user profile' do\n\t\tvisit edit_user_registration_path\n\t\tfill_in 'Name', with: 'Updated Name'\n\t\tclick_button 'Update'\n\t\texpect(page).to have_content('Your account has been updated successfully')\n\tend\nend" },
    { game_list_id: 9,
      content: "RSpec.describe 'Users', type: :request do\n#ユーザー一覧取得のテスト\n\tdescribe 'GET /index' do\n\t\tit 'returns http success' do\n\t\t\tget '/users'\n\t\t\texpect(response).to have_http_status(:success)\n\t\tend\n\tend\nend" },
    { game_list_id: 9,
      content: "RSpec.describe 'Users', type: :request do\n#ユーザー作成のテスト\n\tdescribe 'POST /create' do\n\t\tit 'creates a new user' do\n\t\t\tpost '/users', params: { user: { email: 'newuser@example.com', password: 'password' } }\n\t\t\texpect(response).to have_http_status(:created)\n\t\tend\n\tend\nend" },
    { game_list_id: 9,
      content: "RSpec.describe 'Users', type: :request do\n#ユーザー更新のテスト\n\tdescribe 'PATCH /update' do\n\t\tit 'updates the user' do\n\t\t\tuser = create(:user)\n\t\t\tpatch user_path(user), params: { user: { name: 'Updated Name' } }\n\t\t  expect(response).to have_http_status(:ok)\n\t\tend\n\tend\nend" },
    { game_list_id: 9,
      content: "RSpec.describe 'Users', type: :request do\n#ユーザー削除のテスト\n\tdescribe 'DELETE /destroy' do\n\t\tit 'deletes the user' do\n\t\t\tuser = create(:user)\n\t\t\tdelete user_path(user)\n\t\t\texpect(response).to have_http_status(:no_content)\n\t\tend\n\tend\nend" },
    { game_list_id: 9,
      content: "RSpec.describe 'Users', type: :request do\n#ユーザー詳細取得のテスト\n\tdescribe 'GET /show' do\n\t\tit 'returns http success' do\n\t\tuser = create(:user)\n\t\t\tget user_path(user)\n\t\texpect(response).to have_http_status(:success)\n\t\tend\n\tend\nend" },
    { game_list_id: 10,
      content: "<%= form_with(model: @user, local: true) do |form| %>\n  <%= form.label :email %>\n\t<%= form.text_field :email %>\n\t<%= form.submit 'Save' %>\n<% end %>" },
    { game_list_id: 10, content: "<%= link_to 'Edit Profile', edit_user_path(@user) %>" },
    { game_list_id: 10, content: "<%= render 'shared/header' %>\n<div class='container'>\n  <%= yield %>\n</div>" },
    { game_list_id: 10,
      content: "<%= form_with(url: user_path(@user), method: :patch) do |form| %>\n\t<%= form.label :name %>\n\t<%= form.text_field :name %>\n\t<%= form.submit 'Update' %>\n<% end %>" },
    { game_list_id: 10, content: "<%= link_to 'Back', users_path %>" },
    { game_list_id: 11,
      content: "class User < ApplicationRecord\n\tvalidates :email, presence: true, uniqueness: true\nend" },
    { game_list_id: 11,
      content: "class User < ApplicationRecord\n\tbefore_save: downcase_email\n\n\tprivate\n\n\tdef downcase_email\n\t\tself.email = email.downcase\n\t  end\nend" },
    { game_list_id: 11, content: "class Post < ApplicationRecord\n\tbelongs_to :user\nend" },
    { game_list_id: 11, content: "class User < ApplicationRecord\n\tscope :active, -> { where(active: true) }\nend" },
    { game_list_id: 11, content: "class User < ApplicationRecord\n\tvalidates :username, length: { minimum: 4 }\nend" },
    { game_list_id: 12,
      content: "class UsersController < ApplicationController\n\tdef index\n\t\t@users = User.all\n\tend\nend" },
    { game_list_id: 12,
      content: "class UsersController < ApplicationController\n\tdef create\n\t\t@user = User.new(user_params)\n\t\tif @user.save\n\t\t\tredirect_to @user\n\t\telse\n\t\t\trender 'new'\n\t\tend\n\tend\n\n\tprivate\n\n\tdef user_params\n\t\tparams.require(:user).permit(:email, :password)\n\tend\nend" },
    { game_list_id: 12,
      content: "class UsersController < ApplicationController\n\tdef edit\n\t\t@user = User.find(params[:id])\n\tend\nend" },
    { game_list_id: 12,
      content: "class UsersController < ApplicationController\n\tdef destroy\n\t\t@user = User.find(params[:id])\n\t\t@user.destroy\n\t\tredirect_to users_path\n\tend\nend" },
    { game_list_id: 12,
      content: "class UsersController < ApplicationController\n\tdef show\n\t\t@user = User.find(params[:id])\n\tend\nend" },
    { game_list_id: 13, content: 'User.where(active: true).order(created_at: :desc)' },
    { game_list_id: 13, content: 'User.joins(:posts).where(posts: { published: true })' },
    { game_list_id: 13, content: 'User.includes(:profile).where(profiles: { visible: true })' },
    { game_list_id: 13, content: 'User.group(:role).count' },
    { game_list_id: 13, content: "User.select(:name).where('age > ?', 18)" },
    { game_list_id: 14,
      content: "class User < ApplicationRecord\n\tvalidates :email, presence: true, uniqueness: true\nend" },
    { game_list_id: 14,
      content: "class Product < ApplicationRecord\n\tvalidates :price, numericality: { greater_than: 0 }\nend" },
    { game_list_id: 14,
      content: "class Order < ApplicationRecord\n\tvalidates :total_amount, numericality: { greater_than_or_equal_to: 0 }\nend" },
    { game_list_id: 14,
      content: "class Comment < ApplicationRecord\n\tvalidates :content, length: { minimum: 5 }\nend" },
    { game_list_id: 14,
      content: "class User < ApplicationRecord\n\tvalidates :username, presence: true, length: { maximum: 15 }\nend" }
  ]
end
