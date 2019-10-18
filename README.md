

# ransack導入

- gem 入れる


- 前提

Person has_many  Prefecture

```view

- contをカラムの末尾につける
- search_form_forメソッド
- 引数は@q
- アソシエーション　prefectures_pref_name_cont

<%= search_form_for @q, url: persons_path do |f| %>
 <%= f.label :name_cont %>
  <%= f.search_field :name_cont %>

  <%= f.search_field :prefectures_pref_name_cont%>

 <%= f.submit %>
<%end%>


```

```controller

def index
  
@q = Person.ransack(params[:q])

@persons = @q.result # resultの中に結果が入っている

@persons = @q.result.includes(:prefectures) # これ検索の部分はrailsのjoinsと同じ
end
```


# 検索の仕組み

- Person Prefecture

これでも検索できる

```ruby
Person.joins(:prefectures).where(pref_name:"検索名")
```

# フラッシュ

