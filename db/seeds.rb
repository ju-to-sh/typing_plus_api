# ユーザー作成
10.times do |n|
  FactoryBot.create(:user)
end

# クイズ問題作成
questions = [
  'Active Recordについて正しい記述となるように(  )内に入る適切な言葉を選びなさい。\nActive Recordとは、(  )に相当するものであり、ビジネスデータとビジネスロジックを表すシステムの階層である。',
  'O/Rマッピングの主な目的について最も適切なものを選びなさい。',
  'ActiveRecordのコールバックで、レコードが保存される前に実行されるコールバックを選びなさい',
  'ActiveRecordのアソシエーションで、has_manyの関連付けを持つモデルが子レコードを削除する際に、子レコードも一緒に削除されるようにするためのオプションを選びなさい',
  'ActiveRecordで、一意性を検証するためのバリデーションを選びなさい',
  'RailsのRESTfulルーティングにおいて、editアクションに対応するHTTPメソッドを選びなさい',
  'Railsのコントローラにおいて、before_actionフィルターを使用して特定のアクションの前に実行されるメソッドを指定する際、アクションをスキップするために使用するメソッドを選びなさい',
  'Railsのresourcesルーティングで、特定のリソースのネストされたリソースを定義する際の正しい記述を選びなさい',
  'Railsのストロングパラメータを使用して、userパラメータのうちnameとemailのみを許可するための正しい記述を選びなさい',
  'Railsのコントローラで、特定のアクションでのみ適用されるbefore_actionフィルターを設定するための正しい記述を選びなさい',
]

questions.each do |question|
  FactoryBot.create(:quiz, content: question)
end

# クイズ問題の選択肢作成
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
  {quiz_id: 10, content: 'before_action :authenticate_user, except: [:show, :edit]', is_correct: false}
]

question_choices.each do |choice|
  FactoryBot.create(:quiz_choice, choice)
end
