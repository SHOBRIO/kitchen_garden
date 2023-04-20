//= require jquery
//= require jquery_ujs
//= require rails-ujs
//= require turbolinks
//= require_tree .

document.querySelectorAll('.diary-link').forEach(function(link) {
    link.addEventListener('click', function(event) {
      event.preventDefault(); // ページ遷移を止める

      // クリックされたリンクのhref属性から日付を取得する
      var date = new Date(this.getAttribute('href').split('=')[1]);

      // フォームの日付フィールドに初期値として日付を設定する
      var dateField = document.querySelector('#diary_date');
      dateField.value = date.toISOString().substr(0, 10); // フォームの日付フィールドのidに応じて変更する

      // フォームを表示する（例えば、モーダルで表示するなど）
      var form = document.querySelector('#diary-form');
      form.style.display = 'block'; // フォームのidに応じて変更する
    });
  });

