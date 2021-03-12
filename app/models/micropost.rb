class Micropost < ApplicationRecord
  belongs_to :circle
  has_one_attached :image
  default_scope -> { order(created_at: :desc) } #新しい投稿から古い投稿の順番で並べ替える。
  validates :circle_id,presence:true            #矢印はラムダ式という,オブジェクトを作成する文法
  validates :content, presence: true, length: { maximum: 140 }
  validates :image,   content_type: { in: %w[image/jpeg image/gif image/png],
                      message: "有効な画像フォーマットではありません" },
             size:         { less_than: 5.megabytes,
                           message: "5MB以下のファイルサイズにしてください" }

  #表示用のリサイズ済み画像を返す
  def display_image
    image.variant(resize_to_limit:[500,500])
  end
end
