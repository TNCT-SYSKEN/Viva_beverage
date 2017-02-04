GenreList.create(name: "お茶")
GenreList.create(name: "紅茶")
GenreList.create(name: "コーヒー")
GenreList.create(name: "スポーツドリンク")
GenreList.create(name: "水")
GenreList.create(name: "果実・野菜ジュース")
GenreList.create(name: "炭酸ジュース")
GenreList.create(name: "その他")

Vending.create(lat: 35.700889, lon: 139.771905, func: "ゴミ箱")
Vending.create(lat: 35.700875, lon: 139.772114, func: "ゴミ箱,IC")

Drink.create(genre_id: 7, name: "ペプシコーラ")
Drink.create(genre_id: 1, name: "やさしい麦茶")
Drink.create(genre_id: 1, name: "4やさしい麦茶")
Drink.create(genre_id: 1, name: "さしい麦茶")
Drink.create(genre_id: 1, name: "やしい麦茶")
Drink.create(genre_id: 1, name: "やさい麦茶")
Drink.create(genre_id: 1, name: "やさし麦茶")
Drink.create(genre_id: 1, name: "やさしい茶")
Drink.create(genre_id: 1, name: "やさしい麦")
Drink.create(genre_id: 1, name: "1やさしい麦茶")
Drink.create(genre_id: 1, name: "2やさしい麦茶")
Drink.create(genre_id: 1, name: "3やさしい麦茶")
Drink.create(genre_id: 1, name: "お茶")
Drink.create(genre_id: 6, name: "レモンスカッシュ")

VeRelationShip.create(vending_id: 1, drink_id: 1, temp: -1, value: 100);
VeRelationShip.create(vending_id: 1, drink_id: 2, temp: -1, value: 100);
VeRelationShip.create(vending_id: 2, drink_id: 3, temp: -1, value: 120);
VeRelationShip.create(vending_id: 2, drink_id: 4, temp: -1, value: 110);
VeRelationShip.create(vending_id: 3, drink_id: 1, temp: -1, value: 110);
