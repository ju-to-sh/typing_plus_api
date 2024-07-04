# ゲームリストデータ
def game_lists
  game_lists = [
    {title: 'Active Record', content: 'Active Recordに関する問題', game_type: 0, level: 3, category: 1},
    {title: 'CRUD処理', content: 'CRUD処理に関する問題', game_type: 0, level: 2, category: 1},
    {title: 'Ruby 条件分岐', content: 'Rubyの条件分岐に関する問題', game_type: 0, level: 1, category: 0},
    {title: 'Ruby 配列', content: 'Rubyの配列に関する問題', game_type: 0, level: 1, category: 0},
    {title: 'Ruby基本構文', content: 'Rubyでよく使用する基本構文に関するタイピング問題', game_type: 1, level: 2, category: 0},
    {title: 'Rails基本構文', content: 'Railsでよく使用する基本構文に関するタイピング問題', game_type: 1, level: 3, category: 1},
  ]
end

# クイズデータ
def questions
  questions = [
    {game_list_id: 1, content: "Active Recordについて正しい記述となるように(  )内に入る適切な言葉を選びなさい。\nActive Recordとは、(  )に相当するものであり、ビジネスデータとビジネスロジックを表すシステムの階層である。"},
    {game_list_id: 1, content:'O/Rマッピングの主な目的について最も適切なものを選びなさい。'},
    {game_list_id: 1, content: 'ActiveRecordのコールバックで、レコードが保存される前に実行されるコールバックを選びなさい'},
    {game_list_id: 1, content: 'ActiveRecordのアソシエーションで、has_manyの関連付けを持つモデルが子レコードを削除する際に、子レコードも一緒に削除されるようにするためのオプションを選びなさい'},
    {game_list_id: 1, content: 'ActiveRecordで、一意性を検証するためのバリデーションを選びなさい'},
    {game_list_id: 2, content: 'RailsのRESTfulルーティングにおいて、editアクションに対応するHTTPメソッドを選びなさい'},
    {game_list_id: 2, content: 'Railsのコントローラにおいて、before_actionフィルターを使用して特定のアクションの前に実行されるメソッドを指定する際、アクションをスキップするために使用するメソッドを選びなさい'},
    {game_list_id: 2, content: 'Railsのresourcesルーティングで、特定のリソースのネストされたリソースを定義する際の正しい記述を選びなさい'},
    {game_list_id: 2, content: 'Railsのストロングパラメータを使用して、userパラメータのうちnameとemailのみを許可するための正しい記述を選びなさい'},
    {game_list_id: 2, content: 'Railsのコントローラで、特定のアクションでのみ適用されるbefore_actionフィルターを設定するための正しい記述を選びなさい'},
    {game_list_id: 3, content: 'Rubyで条件分岐を一行で書く場合の正しい構文を選びなさい'},
    {game_list_id: 3, content: 'Rubyのcase文で、全ての条件が偽である場合に実行される節を選びなさい'},
    {game_list_id: 3, content: 'Rubyでunless文を使うときに注意すべきことを選びなさい'},
    {game_list_id: 3, content: 'Rubyの三項演算子を使用する正しい方法を選びなさい'},
    {game_list_id: 3, content: 'Rubyのcase文でwhen節を範囲オブジェクトで使用する場合、次のうち正しい構文を選びなさい'},
    {game_list_id: 4, content: 'Rubyで配列の要素をシャッフルするためのメソッドを選びなさい'},
    {game_list_id: 4, content: 'Rubyで配列の中から重複した要素を取り除くメソッドを選びなさい'},
    {game_list_id: 4, content: 'Rubyで配列の全ての要素が特定の条件を満たすかどうかを調べるメソッドを選びなさい'},
    {game_list_id: 4, content: "次のコードの出力結果を選びなさい\n
      arr = [10, 20, 30, 40, 50]\n
      result = arr.each_slice(2).map(&:reverse).flatten\n
      puts result"},
    {game_list_id: 4, content: "次のコードの出力結果を選びなさい\n
      arr = [[1, 2], [3, 4], [5, 6]]\n
      result = arr.transpose\n
      puts result.inspect"},
  ]
end

# クイズ選択肢データ
def question_choices
  question_choices = [
    {quiz_id: 1, content: 'モデル', is_correct: true},
    {quiz_id: 1, content: 'コントローラ', is_correct: false},
    {quiz_id: 1, content: 'ビュー', is_correct: false},
    {quiz_id: 1, content: 'ルーティング', is_correct: false},
    {quiz_id: 2, content: 'データベースのスキーマを自動生成すること', is_correct: false},
    {quiz_id: 2, content: 'オブジェクト指向プログラミングとリレーショナルデータベースの間のインピーダンスミスマッチを解消すること', is_correct: true},
    {quiz_id: 2, content: 'データベースのクエリ性能を向上させること', is_correct: false},
    {quiz_id: 2, content: 'データベースのセキュリティを強化すること', is_correct: false},
    {quiz_id: 3, content: 'after_create', is_correct: false},
    {quiz_id: 3, content: 'before_update', is_correct: false},
    {quiz_id: 3, content: 'after_save', is_correct: false},
    {quiz_id: 3, content: 'before_save', is_correct: true},
    {quiz_id: 4, content: 'delete_all', is_correct: false},
    {quiz_id: 4, content: 'destroy_all', is_correct: false},
    {quiz_id: 4, content: 'dependent: :delete', is_correct: false},
    {quiz_id: 4, content: 'dependent: :destroy', is_correct: true},
    {quiz_id: 5, content: 'validates :attribute, unique: true', is_correct: false},
    {quiz_id: 5, content: 'validates :attribute, uniqueness: true', is_correct: true},
    {quiz_id: 5, content: 'validates_uniqueness_of :attribute', is_correct: false},
    {quiz_id: 5, content: 'validate :attribute, uniqueness: true', is_correct: false},
    {quiz_id: 6, content: 'GET', is_correct: true},
    {quiz_id: 6, content: 'POST', is_correct: false},
    {quiz_id: 6, content: 'PUT', is_correct: false},
    {quiz_id: 6, content: 'PATCH', is_correct: false},
    {quiz_id: 7, content: 'skip_action', is_correct: false},
    {quiz_id: 7, content: 'skip_before_action', is_correct: true},
    {quiz_id: 7, content: 'skip_filter', is_correct: false},
    {quiz_id: 7, content: 'skip_around_action', is_correct: false},
    {quiz_id: 8, content: 'resources :articles do nested_resources :comments end', is_correct: false},
    {quiz_id: 8, content: 'resources :articles with :comments', is_correct: false},
    {quiz_id: 8, content: 'resources :articles, nested: :comments', is_correct: false},
    {quiz_id: 8, content: 'resources :articles do resources :comments end', is_correct: true},
    {quiz_id: 9, content: 'params.require(:user).permit(:name, :email)', is_correct: true},
    {quiz_id: 9, content: 'params.allow(:user).only(:name, :email)', is_correct: false},
    {quiz_id: 9, content: 'arams.require(:user).allow(:name, :email)', is_correct: false},
    {quiz_id: 9, content: 'params.permit(:user).require(:name, :email)', is_correct: false},
    {quiz_id: 10, content: 'before_filter :authenticate_user, only: [:show, :edit]', is_correct: false},
    {quiz_id: 10, content: 'before_action :authenticate_user, if: [:show, :edit]', is_correct: false},
    {quiz_id: 10, content: 'before_action :authenticate_user, only: [:show, :edit]', is_correct: true},
    {quiz_id: 10, content: 'before_action :authenticate_user, except: [:show, :edit]', is_correct: false},
    {quiz_id: 11, content: 'if condition then do_something', is_correct: false},
    {quiz_id: 11, content: 'condition ? do_something : do_something_else', is_correct: false},
    {quiz_id: 11, content: 'do_something if condition', is_correct: true},
    {quiz_id: 11, content: 'condition then do_something', is_correct: false},
    {quiz_id: 12, content: 'else', is_correct: true},
    {quiz_id: 12, content: 'default', is_correct: false},
    {quiz_id: 12, content: 'when none', is_correct: false},
    {quiz_id: 12, content: 'nil', is_correct: false},
    {quiz_id: 13, content: 'unlessは条件が真のときに実行される', is_correct: false},
    {quiz_id: 13, content: 'unlessはelse節を持つことができない', is_correct: false},
    {quiz_id: 13, content: 'unlessは条件が偽のときに実行される', is_correct: true},
    {quiz_id: 13, content: 'unlessはブロックをサポートしていない', is_correct: false},
    {quiz_id: 14, content: 'condition ? if_false : if_true', is_correct: false},
    {quiz_id: 14, content: 'condition ? if_true : if_false', is_correct: true},
    {quiz_id: 14, content: 'if_true ? condition : if_false', is_correct: false},
    {quiz_id: 14, content: 'if_false : if_true ? condition', is_correct: false},
    {quiz_id: 15, content: 'when (1..5)', is_correct: false},
    {quiz_id: 15, content: 'when [1..5]', is_correct: false},
    {quiz_id: 15, content: 'when {1..5}', is_correct: false},
    {quiz_id: 15, content: 'when 1..5', is_correct: true},
    {quiz_id: 16, content: 'min', is_correct: false},
    {quiz_id: 16, content: 'shuffle', is_correct: true},
    {quiz_id: 16, content: 'randomize', is_correct: false},
    {quiz_id: 16, content: 'scramble', is_correct: false},
    {quiz_id: 17, content: 'uniq', is_correct: true},
    {quiz_id: 17, content: 'unique', is_correct: false},
    {quiz_id: 17, content: 'distinct', is_correct: false},
    {quiz_id: 17, content: 'remove_duplicates', is_correct: false},
    {quiz_id: 18, content: 'any?', is_correct: false},
    {quiz_id: 18, content: 'include?', is_correct: false},
    {quiz_id: 18, content: 'whole?', is_correct: false},
    {quiz_id: 18, content: 'all?', is_correct: true},
    {quiz_id: 19, content: '[20, 10, 40, 30, 50]', is_correct: true},
    {quiz_id: 19, content: '[10, 20, 30, 40, 50]', is_correct: false},
    {quiz_id: 19, content: '[10, 20, 30, 40]', is_correct: false},
    {quiz_id: 19, content: '[50, 40, 30, 20, 10]', is_correct: false},
    {quiz_id: 20, content: '[[1, 2, 3, 4, 5, 6]]', is_correct: false},
    {quiz_id: 20, content: '[[1, 2], [3, 4], [5, 6]]', is_correct: false},
    {quiz_id: 20, content: '[[1, 2], [3, 4]]', is_correct: false},
    {quiz_id: 20, content: '[[1, 3, 5], [2, 4, 6]]', is_correct: true},
  ]
end

# タイピング問題データ
def typing_questions
  typing_questions = [
    {game_list_id: 5, content: "fruits = ['apple', 'banana', 'cherry']\nfruits << 'date'"},
    {game_list_id: 5, content: "person = {name: 'Alice', age: 30, city: 'New York'\n}puts person[:name]"},
    {game_list_id: 5, content: "def greet(name)\n\"Hello, \#{name}!\"\nend\nputs greet('Bob')"},
    {game_list_id: 5, content: "numbers = [1, 2, 3, 4, 5]\nnumbers.each do |number|\nputs number * 2\nend"},
    {game_list_id: 5, content: "class Dog\ndef initialize(name)\n@name = name\nend\ndef bark\n\"\#{@name} says woof!\"\nend\nend\n\ndog = Dog.new('Rex')\nputs dog.bark"},
    {game_list_id: 6, content: "class ApplicationController < ActionController::Base\nprotect_from_forgery with: :exception\nend"},
    {game_list_id: 6, content: "def create\n@article = Article.new(article_params)\n\nif @article.save\nredirect_to @article\nelse\nrender 'new'\nend\nend"},
    {game_list_id: 6, content: "resources :articles do\nresources :comments\nend"},
    {game_list_id: 6, content: "class Article < ApplicationRecord\nhas_many :comments, dependent: :destroy\nvalidates :title, presence: true,length: { minimum: 5 }\nend"},
    {game_list_id: 6, content: "age = 18\nif age >= 18\nputs 'You are an adult.'\nelse\nputs 'You are a minor.'\nend"},
  ]
end
